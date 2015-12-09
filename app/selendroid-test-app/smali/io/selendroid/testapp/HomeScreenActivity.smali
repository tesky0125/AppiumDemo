.class public Lio/selendroid/testapp/HomeScreenActivity;
.super Landroid/app/Activity;
.source "HomeScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/selendroid/testapp/HomeScreenActivity$MyAsyncTask;,
        Lio/selendroid/testapp/HomeScreenActivity$OkOnClickListener;,
        Lio/selendroid/testapp/HomeScreenActivity$CancelOnClickListener;
    }
.end annotation


# static fields
.field private static final DIALOG_ALERT:I = 0xa

.field private static final DIALOG_DOWNLOAD_PROGRESS:I = 0xb

.field private static final DIALOG_LONG_PRESS:I = 0xc

.field private static TAG:Ljava/lang/String;


# instance fields
.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "Selendroid-demoapp"

    sput-object v0, Lio/selendroid/testapp/HomeScreenActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lio/selendroid/testapp/HomeScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 192
    return-void
.end method

.method static synthetic access$200(Lio/selendroid/testapp/HomeScreenActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lio/selendroid/testapp/HomeScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private initExceptionTestButton()V
    .locals 2

    .prologue
    .line 265
    const v1, 0x7f07000e

    invoke-virtual {p0, v1}, Lio/selendroid/testapp/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 266
    .local v0, exceptionTestButton:Landroid/widget/Button;
    new-instance v1, Lio/selendroid/testapp/HomeScreenActivity$3;

    invoke-direct {v1, p0}, Lio/selendroid/testapp/HomeScreenActivity$3;-><init>(Lio/selendroid/testapp/HomeScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    return-void
.end method

.method private initExceptionTestField()V
    .locals 2

    .prologue
    .line 275
    const v1, 0x7f07000f

    invoke-virtual {p0, v1}, Lio/selendroid/testapp/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 276
    .local v0, exceptionTestField:Landroid/widget/EditText;
    new-instance v1, Lio/selendroid/testapp/HomeScreenActivity$4;

    invoke-direct {v1, p0}, Lio/selendroid/testapp/HomeScreenActivity$4;-><init>(Lio/selendroid/testapp/HomeScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 288
    return-void
.end method


# virtual methods
.method public displayPopupWindow(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, -0x2

    .line 85
    invoke-virtual {p0}, Lio/selendroid/testapp/HomeScreenActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 87
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030003

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 88
    .local v3, popupView:Landroid/view/View;
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, v3, v7, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 91
    .local v4, popupWindow:Landroid/widget/PopupWindow;
    const v5, 0x7f07001d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 93
    .local v0, btnDismiss:Landroid/widget/Button;
    new-instance v5, Lio/selendroid/testapp/HomeScreenActivity$2;

    invoke-direct {v5, p0, v4}, Lio/selendroid/testapp/HomeScreenActivity$2;-><init>(Lio/selendroid/testapp/HomeScreenActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v5, 0x7f07000d

    invoke-virtual {p0, v5}, Lio/selendroid/testapp/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 102
    .local v1, btnOpenPopup:Landroid/widget/Button;
    const/16 v5, -0x32

    const/16 v6, -0x12c

    invoke-virtual {v4, v1, v5, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 103
    return-void
.end method

.method public displayTextView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 138
    const v1, 0x7f07000b

    invoke-virtual {p0, v1}, Lio/selendroid/testapp/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    .local v0, textview:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public displayToast(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 129
    invoke-virtual {p0}, Lio/selendroid/testapp/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 130
    .local v0, context:Landroid/content/Context;
    const-string v2, "Hello selendroid toast!"

    .line 131
    .local v2, text:Ljava/lang/CharSequence;
    const/4 v1, 0x1

    .line 133
    .local v1, duration:I
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 134
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 135
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget-object v1, Lio/selendroid/testapp/HomeScreenActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lio/selendroid/testapp/HomeScreenActivity;->setContentView(I)V

    .line 62
    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Lio/selendroid/testapp/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 63
    .local v0, button:Landroid/widget/Button;
    new-instance v1, Lio/selendroid/testapp/HomeScreenActivity$1;

    invoke-direct {v1, p0}, Lio/selendroid/testapp/HomeScreenActivity$1;-><init>(Lio/selendroid/testapp/HomeScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 70
    invoke-direct {p0}, Lio/selendroid/testapp/HomeScreenActivity;->initExceptionTestButton()V

    .line 71
    invoke-direct {p0}, Lio/selendroid/testapp/HomeScreenActivity;->initExceptionTestField()V

    .line 72
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 148
    packed-switch p1, :pswitch_data_0

    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 151
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v4, "This will end the activity"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 154
    const-string v4, "I agree"

    new-instance v5, Lio/selendroid/testapp/HomeScreenActivity$OkOnClickListener;

    invoke-direct {v5, p0, v7}, Lio/selendroid/testapp/HomeScreenActivity$OkOnClickListener;-><init>(Lio/selendroid/testapp/HomeScreenActivity;Lio/selendroid/testapp/HomeScreenActivity$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    const-string v4, "No, no"

    new-instance v5, Lio/selendroid/testapp/HomeScreenActivity$CancelOnClickListener;

    invoke-direct {v5, p0, v7}, Lio/selendroid/testapp/HomeScreenActivity$CancelOnClickListener;-><init>(Lio/selendroid/testapp/HomeScreenActivity;Lio/selendroid/testapp/HomeScreenActivity$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 157
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 160
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    const-string v4, "Long Press Tap has been received."

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 162
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 163
    const-string v4, "Ok"

    new-instance v5, Lio/selendroid/testapp/HomeScreenActivity$CancelOnClickListener;

    invoke-direct {v5, p0, v7}, Lio/selendroid/testapp/HomeScreenActivity$CancelOnClickListener;-><init>(Lio/selendroid/testapp/HomeScreenActivity;Lio/selendroid/testapp/HomeScreenActivity$1;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 165
    .local v3, dialog2:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    move-object v2, v3

    .line 166
    goto :goto_0

    .line 168
    .end local v1           #builder2:Landroid/app/AlertDialog$Builder;
    .end local v3           #dialog2:Landroid/app/AlertDialog;
    :pswitch_2
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lio/selendroid/testapp/HomeScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 169
    iget-object v4, p0, Lio/selendroid/testapp/HomeScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v5, "Waiting Dialog"

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v4, p0, Lio/selendroid/testapp/HomeScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 171
    iget-object v4, p0, Lio/selendroid/testapp/HomeScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 172
    iget-object v4, p0, Lio/selendroid/testapp/HomeScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 173
    iget-object v4, p0, Lio/selendroid/testapp/HomeScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 174
    iget-object v4, p0, Lio/selendroid/testapp/HomeScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 175
    iget-object v2, p0, Lio/selendroid/testapp/HomeScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 228
    invoke-virtual {p0}, Lio/selendroid/testapp/HomeScreenActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 229
    .local v0, menuInflater:Landroid/view/MenuInflater;
    const v1, 0x7f030001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 230
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 260
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 238
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/selendroid/testapp/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lio/selendroid/testapp/HomeScreenActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lio/selendroid/testapp/HomeScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 242
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/selendroid/testapp/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lio/selendroid/testapp/WebViewActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lio/selendroid/testapp/HomeScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 246
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/selendroid/testapp/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lio/selendroid/testapp/MultipleWebViewsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lio/selendroid/testapp/HomeScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 249
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "io.selendroid.directory/io.selendroid.directory.EmployeeDirectoy"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 253
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v2, "http://selendroid.io/directory#employees/4"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0, v0}, Lio/selendroid/testapp/HomeScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x7f070012
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 77
    const v1, 0x7f07000b

    invoke-virtual {p0, v1}, Lio/selendroid/testapp/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    .local v0, textview:Landroid/widget/TextView;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    return-void
.end method

.method public showL10nDialog(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 106
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lio/selendroid/testapp/HomeScreenActivity;->showDialog(I)V

    .line 107
    return-void
.end method

.method public showSearchDialog(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/selendroid/testapp/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/selendroid/testapp/SearchUsersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, nextScreen:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lio/selendroid/testapp/HomeScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method public showUserRegistrationDialog(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/selendroid/testapp/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/selendroid/testapp/RegisterUserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v0, nextScreen:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lio/selendroid/testapp/HomeScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public showWaitingDialog(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 110
    new-instance v0, Lio/selendroid/testapp/HomeScreenActivity$MyAsyncTask;

    invoke-direct {v0, p0}, Lio/selendroid/testapp/HomeScreenActivity$MyAsyncTask;-><init>(Lio/selendroid/testapp/HomeScreenActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lio/selendroid/testapp/HomeScreenActivity$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    return-void
.end method

.method public showWebViewDialog(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/selendroid/testapp/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/selendroid/testapp/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, nextScreen:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lio/selendroid/testapp/HomeScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method
