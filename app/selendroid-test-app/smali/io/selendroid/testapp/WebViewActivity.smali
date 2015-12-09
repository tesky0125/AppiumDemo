.class public Lio/selendroid/testapp/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/selendroid/testapp/WebViewActivity$SpinnerItem;
    }
.end annotation


# instance fields
.field private arrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lio/selendroid/testapp/WebViewActivity$SpinnerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mainWebView:Landroid/webkit/WebView;

.field private server:Lio/selendroid/testapp/server/HttpServer;

.field private testDataSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    iput-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->server:Lio/selendroid/testapp/server/HttpServer;

    .line 33
    iput-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->mainWebView:Landroid/webkit/WebView;

    .line 34
    iput-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->testDataSpinner:Landroid/widget/Spinner;

    .line 35
    iput-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lio/selendroid/testapp/WebViewActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->testDataSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lio/selendroid/testapp/WebViewActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->mainWebView:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-static {}, Lio/selendroid/testapp/server/HttpServer;->getInstance()Lio/selendroid/testapp/server/HttpServer;

    move-result-object v0

    iput-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->server:Lio/selendroid/testapp/server/HttpServer;

    .line 42
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lio/selendroid/testapp/WebViewActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lio/selendroid/testapp/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->mainWebView:Landroid/webkit/WebView;

    .line 45
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->mainWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 46
    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Lio/selendroid/testapp/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->testDataSpinner:Landroid/widget/Spinner;

    .line 48
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 51
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    const-string v2, "\'Say Hello\'-Demo"

    const-string v3, "http://localhost:4450/"

    invoke-direct {v1, p0, v2, v3}, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;-><init>(Lio/selendroid/testapp/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    const-string v2, "xhtmlTestPage"

    const-string v3, "file:///android_asset/web/xhtmlTest.html"

    invoke-direct {v1, p0, v2, v3}, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;-><init>(Lio/selendroid/testapp/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    const-string v2, "formPage"

    const-string v3, "file:///android_asset/web/formPage.html"

    invoke-direct {v1, p0, v2, v3}, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;-><init>(Lio/selendroid/testapp/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    const-string v2, "selectableItemsPage"

    const-string v3, "file:///android_asset/web/selectableItems.html"

    invoke-direct {v1, p0, v2, v3}, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;-><init>(Lio/selendroid/testapp/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    const-string v2, "nestedPage"

    const-string v3, "file:///android_asset/web/nestedElements.html"

    invoke-direct {v1, p0, v2, v3}, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;-><init>(Lio/selendroid/testapp/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    const-string v2, "javascriptPage"

    const-string v3, "file:///android_asset/web/javascriptPage.html"

    invoke-direct {v1, p0, v2, v3}, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;-><init>(Lio/selendroid/testapp/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    const-string v2, "missedJsReferencePage"

    const-string v3, "file:///android_asset/web/missedJsReference.html"

    invoke-direct {v1, p0, v2, v3}, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;-><init>(Lio/selendroid/testapp/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    const-string v2, "actualXhtmlPage"

    const-string v3, "file:///android_asset/web/actualXhtmlPage.xhtml"

    invoke-direct {v1, p0, v2, v3}, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;-><init>(Lio/selendroid/testapp/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    const-string v2, "Click Source"

    const-string v3, "file:///android_asset/web/click_source.html"

    invoke-direct {v1, p0, v2, v3}, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;-><init>(Lio/selendroid/testapp/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    const-string v2, "Clicks"

    const-string v3, "file:///android_asset/web/clicks.html"

    invoke-direct {v1, p0, v2, v3}, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;-><init>(Lio/selendroid/testapp/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    const-string v2, "Long Content Page"

    const-string v3, "file:///android_asset/web/longContentPage.html"

    invoke-direct {v1, p0, v2, v3}, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;-><init>(Lio/selendroid/testapp/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    const-string v2, "TestClickPage1"

    const-string v3, "file:///android_asset/web/test_click_page1.html"

    invoke-direct {v1, p0, v2, v3}, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;-><init>(Lio/selendroid/testapp/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    const-string v2, "TestClickPage2"

    const-string v3, "file:///android_asset/web/test_click_page2.html"

    invoke-direct {v1, p0, v2, v3}, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;-><init>(Lio/selendroid/testapp/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    const-string v2, "about:blank"

    const-string v3, "about:blank"

    invoke-direct {v1, p0, v2, v3}, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;-><init>(Lio/selendroid/testapp/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    const-string v2, "iframes"

    const-string v3, "file:///android_asset/web/iframes.html"

    invoke-direct {v1, p0, v2, v3}, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;-><init>(Lio/selendroid/testapp/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->testDataSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lio/selendroid/testapp/WebViewActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 77
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->testDataSpinner:Landroid/widget/Spinner;

    new-instance v1, Lio/selendroid/testapp/WebViewActivity$1;

    invoke-direct {v1, p0}, Lio/selendroid/testapp/WebViewActivity$1;-><init>(Lio/selendroid/testapp/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lio/selendroid/testapp/WebViewActivity;->mainWebView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 98
    return-void
.end method

.method public showHomeScreenDialog(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/selendroid/testapp/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/selendroid/testapp/HomeScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, nextScreen:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lio/selendroid/testapp/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method
