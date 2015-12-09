.class public Lio/selendroid/testapp/MultipleWebViewsActivity;
.super Landroid/app/Activity;
.source "MultipleWebViewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/selendroid/testapp/MultipleWebViewsActivity$1;,
        Lio/selendroid/testapp/MultipleWebViewsActivity$MyWebViewClient;
    }
.end annotation


# instance fields
.field private webView1:Landroid/webkit/WebView;

.field private webView2:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    iput-object v0, p0, Lio/selendroid/testapp/MultipleWebViewsActivity;->webView1:Landroid/webkit/WebView;

    .line 23
    iput-object v0, p0, Lio/selendroid/testapp/MultipleWebViewsActivity;->webView2:Landroid/webkit/WebView;

    .line 45
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lio/selendroid/testapp/MultipleWebViewsActivity;->setContentView(I)V

    .line 31
    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Lio/selendroid/testapp/MultipleWebViewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lio/selendroid/testapp/MultipleWebViewsActivity;->webView1:Landroid/webkit/WebView;

    .line 32
    iget-object v0, p0, Lio/selendroid/testapp/MultipleWebViewsActivity;->webView1:Landroid/webkit/WebView;

    new-instance v1, Lio/selendroid/testapp/MultipleWebViewsActivity$MyWebViewClient;

    invoke-direct {v1, p0, v2}, Lio/selendroid/testapp/MultipleWebViewsActivity$MyWebViewClient;-><init>(Lio/selendroid/testapp/MultipleWebViewsActivity;Lio/selendroid/testapp/MultipleWebViewsActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 33
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lio/selendroid/testapp/MultipleWebViewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lio/selendroid/testapp/MultipleWebViewsActivity;->webView2:Landroid/webkit/WebView;

    .line 34
    iget-object v0, p0, Lio/selendroid/testapp/MultipleWebViewsActivity;->webView2:Landroid/webkit/WebView;

    new-instance v1, Lio/selendroid/testapp/MultipleWebViewsActivity$MyWebViewClient;

    invoke-direct {v1, p0, v2}, Lio/selendroid/testapp/MultipleWebViewsActivity$MyWebViewClient;-><init>(Lio/selendroid/testapp/MultipleWebViewsActivity;Lio/selendroid/testapp/MultipleWebViewsActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 35
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lio/selendroid/testapp/MultipleWebViewsActivity;->webView1:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/multipleWebViews/file1.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lio/selendroid/testapp/MultipleWebViewsActivity;->webView2:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/multipleWebViews/file2.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 43
    return-void
.end method
