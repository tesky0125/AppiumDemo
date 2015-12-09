.class Lio/selendroid/testapp/WebViewActivity$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/selendroid/testapp/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/selendroid/testapp/WebViewActivity;


# direct methods
.method constructor <init>(Lio/selendroid/testapp/WebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lio/selendroid/testapp/WebViewActivity$1;->this$0:Lio/selendroid/testapp/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lio/selendroid/testapp/WebViewActivity$1;->this$0:Lio/selendroid/testapp/WebViewActivity;

    #getter for: Lio/selendroid/testapp/WebViewActivity;->testDataSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lio/selendroid/testapp/WebViewActivity;->access$000(Lio/selendroid/testapp/WebViewActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    .line 82
    .local v0, item:Lio/selendroid/testapp/WebViewActivity$SpinnerItem;
    iget-object v1, p0, Lio/selendroid/testapp/WebViewActivity$1;->this$0:Lio/selendroid/testapp/WebViewActivity;

    #getter for: Lio/selendroid/testapp/WebViewActivity;->mainWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lio/selendroid/testapp/WebViewActivity;->access$100(Lio/selendroid/testapp/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, v0, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lio/selendroid/testapp/WebViewActivity$1;->this$0:Lio/selendroid/testapp/WebViewActivity;

    #getter for: Lio/selendroid/testapp/WebViewActivity;->testDataSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lio/selendroid/testapp/WebViewActivity;->access$000(Lio/selendroid/testapp/WebViewActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;

    .line 88
    .local v0, item:Lio/selendroid/testapp/WebViewActivity$SpinnerItem;
    iget-object v1, p0, Lio/selendroid/testapp/WebViewActivity$1;->this$0:Lio/selendroid/testapp/WebViewActivity;

    #getter for: Lio/selendroid/testapp/WebViewActivity;->mainWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lio/selendroid/testapp/WebViewActivity;->access$100(Lio/selendroid/testapp/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, v0, Lio/selendroid/testapp/WebViewActivity$SpinnerItem;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 89
    return-void
.end method
