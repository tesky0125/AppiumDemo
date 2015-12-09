.class final Lio/selendroid/testapp/HomeScreenActivity$CancelOnClickListener;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/selendroid/testapp/HomeScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CancelOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/selendroid/testapp/HomeScreenActivity;


# direct methods
.method private constructor <init>(Lio/selendroid/testapp/HomeScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lio/selendroid/testapp/HomeScreenActivity$CancelOnClickListener;->this$0:Lio/selendroid/testapp/HomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/selendroid/testapp/HomeScreenActivity;Lio/selendroid/testapp/HomeScreenActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lio/selendroid/testapp/HomeScreenActivity$CancelOnClickListener;-><init>(Lio/selendroid/testapp/HomeScreenActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 182
    iget-object v0, p0, Lio/selendroid/testapp/HomeScreenActivity$CancelOnClickListener;->this$0:Lio/selendroid/testapp/HomeScreenActivity;

    invoke-virtual {v0}, Lio/selendroid/testapp/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Activity will continue"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    return-void
.end method
