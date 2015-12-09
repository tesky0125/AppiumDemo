.class public Lio/selendroid/testapp/WebViewActivity$SpinnerItem;
.super Ljava/lang/Object;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/selendroid/testapp/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpinnerItem"
.end annotation


# instance fields
.field private text:Ljava/lang/String;

.field final synthetic this$0:Lio/selendroid/testapp/WebViewActivity;

.field public url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/selendroid/testapp/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "text"
    .parameter "url"

    .prologue
    .line 109
    iput-object p1, p0, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;->this$0:Lio/selendroid/testapp/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;->text:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;->url:Ljava/lang/String;

    .line 112
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;->text:Ljava/lang/String;

    return-object v0
.end method
