.class Lio/selendroid/testapp/MultipleWebViewsActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MultipleWebViewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/selendroid/testapp/MultipleWebViewsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lio/selendroid/testapp/MultipleWebViewsActivity;


# direct methods
.method private constructor <init>(Lio/selendroid/testapp/MultipleWebViewsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lio/selendroid/testapp/MultipleWebViewsActivity$MyWebViewClient;->this$0:Lio/selendroid/testapp/MultipleWebViewsActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/selendroid/testapp/MultipleWebViewsActivity;Lio/selendroid/testapp/MultipleWebViewsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lio/selendroid/testapp/MultipleWebViewsActivity$MyWebViewClient;-><init>(Lio/selendroid/testapp/MultipleWebViewsActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 48
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method
