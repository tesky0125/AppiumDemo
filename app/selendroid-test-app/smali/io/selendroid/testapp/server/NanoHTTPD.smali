.class public Lio/selendroid/testapp/server/NanoHTTPD;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/selendroid/testapp/server/NanoHTTPD$HTTPSession;,
        Lio/selendroid/testapp/server/NanoHTTPD$Response;
    }
.end annotation


# static fields
.field public static final HTTP_BADREQUEST:Ljava/lang/String; = "400 Bad Request"

.field public static final HTTP_FORBIDDEN:Ljava/lang/String; = "403 Forbidden"

.field public static final HTTP_INTERNALERROR:Ljava/lang/String; = "500 Internal Server Error"

.field public static final HTTP_NOTFOUND:Ljava/lang/String; = "404 Not Found"

.field public static final HTTP_NOTIMPLEMENTED:Ljava/lang/String; = "501 Not Implemented"

.field public static final HTTP_NOTMODIFIED:Ljava/lang/String; = "304 Not Modified"

.field public static final HTTP_OK:Ljava/lang/String; = "200 OK"

.field public static final HTTP_PARTIALCONTENT:Ljava/lang/String; = "206 Partial Content"

.field public static final HTTP_RANGE_NOT_SATISFIABLE:Ljava/lang/String; = "416 Requested Range Not Satisfiable"

.field public static final HTTP_REDIRECT:Ljava/lang/String; = "301 Moved Permanently"

.field private static final LICENCE:Ljava/lang/String; = "Copyright (C) 2001,2005-2011 by Jarno Elonen <elonen@iki.fi>\nand Copyright (C) 2010 by Konstantinos Togias <info@ktogias.gr>\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\nRedistributions of source code must retain the above copyright notice,\nthis list of conditions and the following disclaimer. Redistributions in\nbinary form must reproduce the above copyright notice, this list of\nconditions and the following disclaimer in the documentation and/or other\nmaterials provided with the distribution. The name of the author may not\nbe used to endorse or promote products derived from this software without\nspecific prior written permission. \n \nTHIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS\'\' AND ANY EXPRESS OR\nIMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES\nOF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.\nIN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,\nINCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT\nNOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."

.field public static final MIME_DEFAULT_BINARY:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field public static final MIME_XML:Ljava/lang/String; = "text/xml"

.field private static gmtFrmt:Ljava/text/SimpleDateFormat;

.field protected static myErr:Ljava/io/PrintStream;

.field protected static myOut:Ljava/io/PrintStream;

.field private static theBufferSize:I

.field private static theMimeTypes:Ljava/util/Hashtable;


# instance fields
.field private myRootDir:Ljava/io/File;

.field private final myServerSocket:Ljava/net/ServerSocket;

.field private myTcpPort:I

.field private myThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 882
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lio/selendroid/testapp/server/NanoHTTPD;->theMimeTypes:Ljava/util/Hashtable;

    .line 884
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "css\t\ttext/css htm\t\ttext/html html\t\ttext/html xml\t\ttext/xml txt\t\ttext/plain asc\t\ttext/plain gif\t\timage/gif jpg\t\timage/jpeg jpeg\t\timage/jpeg png\t\timage/png mp3\t\taudio/mpeg m3u\t\taudio/mpeg-url mp4\t\tvideo/mp4 ogv\t\tvideo/ogg flv\t\tvideo/x-flv mov\t\tvideo/quicktime swf\t\tapplication/x-shockwave-flash js\t\t\tapplication/javascript pdf\t\tapplication/pdf doc\t\tapplication/msword ogg\t\tapplication/x-ogg zip\t\tapplication/octet-stream exe\t\tapplication/octet-stream class\t\tapplication/octet-stream "

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 893
    .local v0, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    sget-object v1, Lio/selendroid/testapp/server/NanoHTTPD;->theMimeTypes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 897
    :cond_0
    const/16 v1, 0x4000

    sput v1, Lio/selendroid/testapp/server/NanoHTTPD;->theBufferSize:I

    .line 900
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v1, Lio/selendroid/testapp/server/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    .line 901
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v1, Lio/selendroid/testapp/server/NanoHTTPD;->myErr:Ljava/io/PrintStream;

    .line 908
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lio/selendroid/testapp/server/NanoHTTPD;->gmtFrmt:Ljava/text/SimpleDateFormat;

    .line 909
    sget-object v1, Lio/selendroid/testapp/server/NanoHTTPD;->gmtFrmt:Ljava/text/SimpleDateFormat;

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 910
    return-void
.end method

.method public constructor <init>(ILjava/io/File;)V
    .locals 3
    .parameter "port"
    .parameter "wwwroot"

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    :try_start_0
    iput p1, p0, Lio/selendroid/testapp/server/NanoHTTPD;->myTcpPort:I

    .line 202
    iput-object p2, p0, Lio/selendroid/testapp/server/NanoHTTPD;->myRootDir:Ljava/io/File;

    .line 203
    new-instance v1, Ljava/net/ServerSocket;

    iget v2, p0, Lio/selendroid/testapp/server/NanoHTTPD;->myTcpPort:I

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lio/selendroid/testapp/server/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    .line 204
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lio/selendroid/testapp/server/NanoHTTPD$1;

    invoke-direct {v2, p0}, Lio/selendroid/testapp/server/NanoHTTPD$1;-><init>(Lio/selendroid/testapp/server/NanoHTTPD;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lio/selendroid/testapp/server/NanoHTTPD;->myThread:Ljava/lang/Thread;

    .line 212
    iget-object v1, p0, Lio/selendroid/testapp/server/NanoHTTPD;->myThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 213
    iget-object v1, p0, Lio/selendroid/testapp/server/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000(Lio/selendroid/testapp/server/NanoHTTPD;)Ljava/net/ServerSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lio/selendroid/testapp/server/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$100()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lio/selendroid/testapp/server/NanoHTTPD;->gmtFrmt:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lio/selendroid/testapp/server/NanoHTTPD;->theBufferSize:I

    return v0
.end method

.method private encodeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "uri"

    .prologue
    .line 681
    const-string v0, ""

    .line 682
    .local v0, newUri:Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "/ "

    const/4 v4, 0x1

    invoke-direct {v1, p1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 683
    .local v1, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 684
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, tok:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 687
    :cond_0
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 690
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 696
    .end local v2           #tok:Ljava/lang/String;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .locals 5
    .parameter "uri"
    .parameter "method"
    .parameter "header"
    .parameter "parms"
    .parameter "files"

    .prologue
    .line 93
    sget-object v2, Lio/selendroid/testapp/server/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 96
    .local v0, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    .local v1, value:Ljava/lang/String;
    sget-object v2, Lio/selendroid/testapp/server/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  HDR: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {p4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 101
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    .restart local v1       #value:Ljava/lang/String;
    sget-object v2, Lio/selendroid/testapp/server/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  PRM: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 105
    .end local v1           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {p5}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 106
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    .restart local v1       #value:Ljava/lang/String;
    sget-object v2, Lio/selendroid/testapp/server/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  UPLOADED: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 111
    .end local v1           #value:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lio/selendroid/testapp/server/NanoHTTPD;->myRootDir:Ljava/io/File;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, p3, v2, v3}, Lio/selendroid/testapp/server/NanoHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lio/selendroid/testapp/server/NanoHTTPD$Response;

    move-result-object v2

    return-object v2
.end method

.method public serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .locals 39
    .parameter "uri"
    .parameter "header"
    .parameter "homeDir"
    .parameter "allowDirectoryListing"

    .prologue
    .line 714
    const/16 v28, 0x0

    .line 717
    .local v28, res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->isDirectory()Z

    move-result v34

    if-nez v34, :cond_0

    .line 718
    new-instance v28, Lio/selendroid/testapp/server/NanoHTTPD$Response;

    .end local v28           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    const-string v34, "500 Internal Server Error"

    const-string v35, "text/plain"

    const-string v36, "INTERNAL ERRROR: serveFile(): given homeDir is not a directory."

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lio/selendroid/testapp/server/NanoHTTPD$Response;-><init>(Lio/selendroid/testapp/server/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .restart local v28       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    :cond_0
    if-nez v28, :cond_3

    .line 724
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    sget-char v35, Ljava/io/File;->separatorChar:C

    const/16 v36, 0x2f

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 725
    const/16 v34, 0x3f

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    if-ltz v34, :cond_1

    const/16 v34, 0x0

    const/16 v35, 0x3f

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v35

    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 728
    :cond_1
    const-string v34, ".."

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_2

    const-string v34, ".."

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_2

    const-string v34, "../"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    if-ltz v34, :cond_3

    .line 729
    :cond_2
    new-instance v28, Lio/selendroid/testapp/server/NanoHTTPD$Response;

    .end local v28           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    const-string v34, "403 Forbidden"

    const-string v35, "text/plain"

    const-string v36, "FORBIDDEN: Won\'t serve ../ for security reasons."

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lio/selendroid/testapp/server/NanoHTTPD$Response;-><init>(Lio/selendroid/testapp/server/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    .restart local v28       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    :cond_3
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 735
    .local v13, f:Ljava/io/File;
    if-nez v28, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v34

    if-nez v34, :cond_4

    .line 736
    new-instance v28, Lio/selendroid/testapp/server/NanoHTTPD$Response;

    .end local v28           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    const-string v34, "404 Not Found"

    const-string v35, "text/plain"

    const-string v36, "Error 404, file not found."

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lio/selendroid/testapp/server/NanoHTTPD$Response;-><init>(Lio/selendroid/testapp/server/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .restart local v28       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    :cond_4
    if-nez v28, :cond_19

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v34

    if-eqz v34, :cond_19

    .line 742
    const-string v34, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_5

    .line 743
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 744
    new-instance v28, Lio/selendroid/testapp/server/NanoHTTPD$Response;

    .end local v28           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    const-string v34, "301 Moved Permanently"

    const-string v35, "text/html"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "<html><body>Redirected: <a href=\""

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\">"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "</a></body></html>"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lio/selendroid/testapp/server/NanoHTTPD$Response;-><init>(Lio/selendroid/testapp/server/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    .restart local v28       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    const-string v34, "Location"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lio/selendroid/testapp/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_5
    if-nez v28, :cond_19

    .line 752
    new-instance v34, Ljava/io/File;

    const-string v35, "index.html"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v0, v13, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->exists()Z

    move-result v34

    if-eqz v34, :cond_9

    .line 753
    new-instance v13, Ljava/io/File;

    .end local v13           #f:Ljava/io/File;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/index.html"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v13       #f:Ljava/io/File;
    move-object/from16 v29, v28

    .line 805
    .end local v28           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .local v29, res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    :goto_0
    if-nez v29, :cond_18

    .line 807
    const/16 v22, 0x0

    .line 808
    .local v22, mime:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x2e

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 809
    .local v9, dot:I
    if-ltz v9, :cond_6

    .line 810
    sget-object v34, Lio/selendroid/testapp/server/NanoHTTPD;->theMimeTypes:Ljava/util/Hashtable;

    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v35

    add-int/lit8 v36, v9, 0x1

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v0, v34

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v0

    .line 811
    :cond_6
    if-nez v22, :cond_7

    const-string v22, "application/octet-stream"

    .line 814
    :cond_7
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ""

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->hashCode()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    .line 819
    .local v12, etag:Ljava/lang/String;
    const-wide/16 v31, 0x0

    .line 820
    .local v31, startFrom:J
    const-wide/16 v10, -0x1

    .line 821
    .local v10, endAt:J
    const-string v34, "range"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 822
    .local v27, range:Ljava/lang/String;
    if-eqz v27, :cond_8

    .line 823
    const-string v34, "bytes="

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_8

    .line 824
    const-string v34, "bytes="

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 825
    const/16 v34, 0x2d

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v23

    .line 827
    .local v23, minus:I
    if-lez v23, :cond_8

    .line 828
    const/16 v34, 0x0

    :try_start_1
    move-object/from16 v0, v27

    move/from16 v1, v34

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v31

    .line 829
    add-int/lit8 v34, v23, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    .line 836
    .end local v23           #minus:I
    :cond_8
    :goto_1
    :try_start_2
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 837
    .local v14, fileLen:J
    if-eqz v27, :cond_16

    const-wide/16 v34, 0x0

    cmp-long v34, v31, v34

    if-ltz v34, :cond_16

    .line 838
    cmp-long v34, v31, v14

    if-ltz v34, :cond_13

    .line 839
    new-instance v28, Lio/selendroid/testapp/server/NanoHTTPD$Response;

    const-string v34, "416 Requested Range Not Satisfiable"

    const-string v35, "text/plain"

    const-string v36, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lio/selendroid/testapp/server/NanoHTTPD$Response;-><init>(Lio/selendroid/testapp/server/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 840
    .end local v29           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v28       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    :try_start_3
    const-string v34, "Content-Range"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "bytes 0-0/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lio/selendroid/testapp/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v34, "ETag"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v12}, Lio/selendroid/testapp/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 874
    .end local v9           #dot:I
    .end local v10           #endAt:J
    .end local v12           #etag:Ljava/lang/String;
    .end local v14           #fileLen:J
    .end local v22           #mime:Ljava/lang/String;
    .end local v27           #range:Ljava/lang/String;
    .end local v31           #startFrom:J
    :goto_2
    const-string v34, "Accept-Ranges"

    const-string v35, "bytes"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lio/selendroid/testapp/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    return-object v28

    .line 754
    :cond_9
    new-instance v34, Ljava/io/File;

    const-string v35, "index.htm"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v0, v13, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->exists()Z

    move-result v34

    if-eqz v34, :cond_a

    .line 755
    new-instance v13, Ljava/io/File;

    .end local v13           #f:Ljava/io/File;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/index.htm"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v13       #f:Ljava/io/File;
    move-object/from16 v29, v28

    .end local v28           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v29       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 757
    .end local v29           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v28       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    :cond_a
    if-eqz p4, :cond_12

    invoke-virtual {v13}, Ljava/io/File;->canRead()Z

    move-result v34

    if-eqz v34, :cond_12

    .line 758
    invoke-virtual {v13}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v16

    .line 759
    .local v16, files:[Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "<html><body><h1>Directory "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "</h1><br/>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 761
    .local v24, msg:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_b

    .line 762
    const/16 v34, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    .line 763
    .local v33, u:Ljava/lang/String;
    const/16 v34, 0x2f

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v30

    .line 764
    .local v30, slash:I
    if-ltz v30, :cond_b

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v30

    move/from16 v1, v34

    if-ge v0, v1, :cond_b

    .line 765
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "<b><a href=\""

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x0

    add-int/lit8 v36, v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "\">..</a></b><br/>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 768
    .end local v30           #slash:I
    .end local v33           #u:Ljava/lang/String;
    :cond_b
    if-eqz v16, :cond_11

    .line 769
    const/16 v18, 0x0

    .local v18, i:I
    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v18

    move/from16 v1, v34

    if-ge v0, v1, :cond_11

    .line 770
    new-instance v5, Ljava/io/File;

    aget-object v34, v16, v18

    move-object/from16 v0, v34

    invoke-direct {v5, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 771
    .local v5, curFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    .line 772
    .local v8, dir:Z
    if-eqz v8, :cond_c

    .line 773
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "<b>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 774
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v35, v16, v18

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v16, v18

    .line 777
    :cond_c
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "<a href=\""

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    aget-object v36, v16, v18

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lio/selendroid/testapp/server/NanoHTTPD;->encodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "\">"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    aget-object v35, v16, v18

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "</a>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 780
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v34

    if-eqz v34, :cond_d

    .line 781
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v20

    .line 782
    .local v20, len:J
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " &nbsp;<font size=2>("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 783
    const-wide/16 v34, 0x400

    cmp-long v34, v20, v34

    if-gez v34, :cond_f

    .line 784
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " bytes"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 790
    :goto_4
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")</font>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 792
    .end local v20           #len:J
    :cond_d
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "<br/>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 793
    if-eqz v8, :cond_e

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "</b>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 769
    :cond_e
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 785
    .restart local v20       #len:J
    :cond_f
    const-wide/32 v34, 0x100000

    cmp-long v34, v20, v34

    if-gez v34, :cond_10

    .line 786
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-wide/16 v35, 0x400

    div-long v35, v20, v35

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-wide/16 v35, 0x400

    rem-long v35, v20, v35

    const-wide/16 v37, 0xa

    div-long v35, v35, v37

    const-wide/16 v37, 0x64

    rem-long v35, v35, v37

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " KB"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_4

    .line 788
    :cond_10
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-wide/32 v35, 0x100000

    div-long v35, v20, v35

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-wide/32 v35, 0x100000

    rem-long v35, v20, v35

    const-wide/16 v37, 0xa

    div-long v35, v35, v37

    const-wide/16 v37, 0x64

    rem-long v35, v35, v37

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " MB"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_4

    .line 796
    .end local v5           #curFile:Ljava/io/File;
    .end local v8           #dir:Z
    .end local v18           #i:I
    .end local v20           #len:J
    :cond_11
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "</body></html>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 797
    new-instance v28, Lio/selendroid/testapp/server/NanoHTTPD$Response;

    .end local v28           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    const-string v34, "200 OK"

    const-string v35, "text/html"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lio/selendroid/testapp/server/NanoHTTPD$Response;-><init>(Lio/selendroid/testapp/server/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v28       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    move-object/from16 v29, v28

    .line 798
    .end local v28           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v29       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 799
    .end local v16           #files:[Ljava/lang/String;
    .end local v24           #msg:Ljava/lang/String;
    .end local v29           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v28       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    :cond_12
    new-instance v28, Lio/selendroid/testapp/server/NanoHTTPD$Response;

    .end local v28           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    const-string v34, "403 Forbidden"

    const-string v35, "text/plain"

    const-string v36, "FORBIDDEN: No directory listing."

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lio/selendroid/testapp/server/NanoHTTPD$Response;-><init>(Lio/selendroid/testapp/server/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v28       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    move-object/from16 v29, v28

    .end local v28           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v29       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 843
    .restart local v9       #dot:I
    .restart local v10       #endAt:J
    .restart local v12       #etag:Ljava/lang/String;
    .restart local v14       #fileLen:J
    .restart local v22       #mime:Ljava/lang/String;
    .restart local v27       #range:Ljava/lang/String;
    .restart local v31       #startFrom:J
    :cond_13
    const-wide/16 v34, 0x0

    cmp-long v34, v10, v34

    if-gez v34, :cond_14

    const-wide/16 v34, 0x1

    sub-long v10, v14, v34

    .line 844
    :cond_14
    sub-long v34, v10, v31

    const-wide/16 v36, 0x1

    add-long v25, v34, v36

    .line 845
    .local v25, newLen:J
    const-wide/16 v34, 0x0

    cmp-long v34, v25, v34

    if-gez v34, :cond_15

    const-wide/16 v25, 0x0

    .line 847
    :cond_15
    move-wide/from16 v6, v25

    .line 848
    .local v6, dataLen:J
    :try_start_4
    new-instance v17, Lio/selendroid/testapp/server/NanoHTTPD$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v6, v7}, Lio/selendroid/testapp/server/NanoHTTPD$2;-><init>(Lio/selendroid/testapp/server/NanoHTTPD;Ljava/io/File;J)V

    .line 853
    .local v17, fis:Ljava/io/FileInputStream;
    move-object/from16 v0, v17

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/io/FileInputStream;->skip(J)J

    .line 855
    new-instance v28, Lio/selendroid/testapp/server/NanoHTTPD$Response;

    const-string v34, "206 Partial Content"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v22

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lio/selendroid/testapp/server/NanoHTTPD$Response;-><init>(Lio/selendroid/testapp/server/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 856
    .end local v29           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v28       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    :try_start_5
    const-string v34, "Content-Length"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lio/selendroid/testapp/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v34, "Content-Range"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "bytes "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "-"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lio/selendroid/testapp/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v34, "ETag"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v12}, Lio/selendroid/testapp/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 870
    .end local v6           #dataLen:J
    .end local v17           #fis:Ljava/io/FileInputStream;
    .end local v25           #newLen:J
    :catch_0
    move-exception v19

    .line 871
    .end local v9           #dot:I
    .end local v10           #endAt:J
    .end local v12           #etag:Ljava/lang/String;
    .end local v14           #fileLen:J
    .end local v27           #range:Ljava/lang/String;
    .end local v31           #startFrom:J
    .local v19, ioe:Ljava/io/IOException;
    :goto_5
    new-instance v28, Lio/selendroid/testapp/server/NanoHTTPD$Response;

    .end local v28           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    const-string v34, "403 Forbidden"

    const-string v35, "text/plain"

    const-string v36, "FORBIDDEN: Reading file failed."

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lio/selendroid/testapp/server/NanoHTTPD$Response;-><init>(Lio/selendroid/testapp/server/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v28       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    goto/16 :goto_2

    .line 861
    .end local v19           #ioe:Ljava/io/IOException;
    .end local v28           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v9       #dot:I
    .restart local v10       #endAt:J
    .restart local v12       #etag:Ljava/lang/String;
    .restart local v14       #fileLen:J
    .restart local v27       #range:Ljava/lang/String;
    .restart local v29       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v31       #startFrom:J
    :cond_16
    :try_start_6
    const-string v34, "if-none-match"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_17

    .line 862
    new-instance v28, Lio/selendroid/testapp/server/NanoHTTPD$Response;

    const-string v34, "304 Not Modified"

    const-string v35, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v22

    move-object/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lio/selendroid/testapp/server/NanoHTTPD$Response;-><init>(Lio/selendroid/testapp/server/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v29           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v28       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    goto/16 :goto_2

    .line 864
    .end local v28           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v29       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    :cond_17
    new-instance v28, Lio/selendroid/testapp/server/NanoHTTPD$Response;

    const-string v34, "200 OK"

    new-instance v35, Ljava/io/FileInputStream;

    move-object/from16 v0, v35

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v22

    move-object/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lio/selendroid/testapp/server/NanoHTTPD$Response;-><init>(Lio/selendroid/testapp/server/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 865
    .end local v29           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v28       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    :try_start_7
    const-string v34, "Content-Length"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lio/selendroid/testapp/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v34, "ETag"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v12}, Lio/selendroid/testapp/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 870
    .end local v9           #dot:I
    .end local v10           #endAt:J
    .end local v12           #etag:Ljava/lang/String;
    .end local v14           #fileLen:J
    .end local v27           #range:Ljava/lang/String;
    .end local v28           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .end local v31           #startFrom:J
    .restart local v29       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    :catch_1
    move-exception v19

    move-object/from16 v28, v29

    .end local v29           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v28       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    goto/16 :goto_5

    .line 831
    .end local v28           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v9       #dot:I
    .restart local v10       #endAt:J
    .restart local v12       #etag:Ljava/lang/String;
    .restart local v23       #minus:I
    .restart local v27       #range:Ljava/lang/String;
    .restart local v29       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v31       #startFrom:J
    :catch_2
    move-exception v34

    goto/16 :goto_1

    .end local v9           #dot:I
    .end local v10           #endAt:J
    .end local v12           #etag:Ljava/lang/String;
    .end local v22           #mime:Ljava/lang/String;
    .end local v23           #minus:I
    .end local v27           #range:Ljava/lang/String;
    .end local v31           #startFrom:J
    :cond_18
    move-object/from16 v28, v29

    .end local v29           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v28       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    goto/16 :goto_2

    :cond_19
    move-object/from16 v29, v28

    .end local v28           #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    .restart local v29       #res:Lio/selendroid/testapp/server/NanoHTTPD$Response;
    goto/16 :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 224
    :try_start_0
    iget-object v0, p0, Lio/selendroid/testapp/server/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 225
    iget-object v0, p0, Lio/selendroid/testapp/server/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
