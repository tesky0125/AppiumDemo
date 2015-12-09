.class public Lio/selendroid/testapp/server/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/selendroid/testapp/server/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Response"
.end annotation


# instance fields
.field public data:Ljava/io/InputStream;

.field public header:Ljava/util/Properties;

.field public mimeType:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field final synthetic this$0:Lio/selendroid/testapp/server/NanoHTTPD;


# direct methods
.method public constructor <init>(Lio/selendroid/testapp/server/NanoHTTPD;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lio/selendroid/testapp/server/NanoHTTPD$Response;->this$0:Lio/selendroid/testapp/server/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lio/selendroid/testapp/server/NanoHTTPD$Response;->header:Ljava/util/Properties;

    .line 122
    const-string v0, "200 OK"

    iput-object v0, p0, Lio/selendroid/testapp/server/NanoHTTPD$Response;->status:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public constructor <init>(Lio/selendroid/testapp/server/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter "status"
    .parameter "mimeType"
    .parameter "data"

    .prologue
    .line 128
    iput-object p1, p0, Lio/selendroid/testapp/server/NanoHTTPD$Response;->this$0:Lio/selendroid/testapp/server/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lio/selendroid/testapp/server/NanoHTTPD$Response;->header:Ljava/util/Properties;

    .line 129
    iput-object p2, p0, Lio/selendroid/testapp/server/NanoHTTPD$Response;->status:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lio/selendroid/testapp/server/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 131
    iput-object p4, p0, Lio/selendroid/testapp/server/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 132
    return-void
.end method

.method public constructor <init>(Lio/selendroid/testapp/server/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "status"
    .parameter "mimeType"
    .parameter "txt"

    .prologue
    .line 137
    iput-object p1, p0, Lio/selendroid/testapp/server/NanoHTTPD$Response;->this$0:Lio/selendroid/testapp/server/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lio/selendroid/testapp/server/NanoHTTPD$Response;->header:Ljava/util/Properties;

    .line 138
    iput-object p2, p0, Lio/selendroid/testapp/server/NanoHTTPD$Response;->status:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lio/selendroid/testapp/server/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 141
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lio/selendroid/testapp/server/NanoHTTPD$Response;->data:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, uee:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 151
    iget-object v0, p0, Lio/selendroid/testapp/server/NanoHTTPD$Response;->header:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method
