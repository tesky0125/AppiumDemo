.class Lio/selendroid/testapp/HomeScreenActivity$MyAsyncTask;
.super Landroid/os/AsyncTask;
.source "HomeScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/selendroid/testapp/HomeScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/selendroid/testapp/HomeScreenActivity;


# direct methods
.method constructor <init>(Lio/selendroid/testapp/HomeScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lio/selendroid/testapp/HomeScreenActivity$MyAsyncTask;->this$0:Lio/selendroid/testapp/HomeScreenActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lio/selendroid/testapp/HomeScreenActivity$MyAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "params"

    .prologue
    .line 202
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 203
    iget-object v0, p0, Lio/selendroid/testapp/HomeScreenActivity$MyAsyncTask;->this$0:Lio/selendroid/testapp/HomeScreenActivity;

    #getter for: Lio/selendroid/testapp/HomeScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lio/selendroid/testapp/HomeScreenActivity;->access$200(Lio/selendroid/testapp/HomeScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 204
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 205
    iget-object v0, p0, Lio/selendroid/testapp/HomeScreenActivity$MyAsyncTask;->this$0:Lio/selendroid/testapp/HomeScreenActivity;

    #getter for: Lio/selendroid/testapp/HomeScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lio/selendroid/testapp/HomeScreenActivity;->access$200(Lio/selendroid/testapp/HomeScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 206
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 207
    iget-object v0, p0, Lio/selendroid/testapp/HomeScreenActivity$MyAsyncTask;->this$0:Lio/selendroid/testapp/HomeScreenActivity;

    #getter for: Lio/selendroid/testapp/HomeScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lio/selendroid/testapp/HomeScreenActivity;->access$200(Lio/selendroid/testapp/HomeScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 208
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 209
    iget-object v0, p0, Lio/selendroid/testapp/HomeScreenActivity$MyAsyncTask;->this$0:Lio/selendroid/testapp/HomeScreenActivity;

    #getter for: Lio/selendroid/testapp/HomeScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lio/selendroid/testapp/HomeScreenActivity;->access$200(Lio/selendroid/testapp/HomeScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lio/selendroid/testapp/HomeScreenActivity$MyAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "unused"

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lio/selendroid/testapp/HomeScreenActivity$MyAsyncTask;->this$0:Lio/selendroid/testapp/HomeScreenActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lio/selendroid/testapp/HomeScreenActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    iget-object v0, p0, Lio/selendroid/testapp/HomeScreenActivity$MyAsyncTask;->this$0:Lio/selendroid/testapp/HomeScreenActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/selendroid/testapp/HomeScreenActivity;->showUserRegistrationDialog(Landroid/view/View;)V

    .line 222
    return-void

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 196
    iget-object v0, p0, Lio/selendroid/testapp/HomeScreenActivity$MyAsyncTask;->this$0:Lio/selendroid/testapp/HomeScreenActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lio/selendroid/testapp/HomeScreenActivity;->showDialog(I)V

    .line 197
    return-void
.end method
