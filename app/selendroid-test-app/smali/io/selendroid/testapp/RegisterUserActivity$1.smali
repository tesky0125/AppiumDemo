.class Lio/selendroid/testapp/RegisterUserActivity$1;
.super Ljava/lang/Object;
.source "RegisterUserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/selendroid/testapp/RegisterUserActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/selendroid/testapp/RegisterUserActivity;


# direct methods
.method constructor <init>(Lio/selendroid/testapp/RegisterUserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lio/selendroid/testapp/RegisterUserActivity$1;->this$0:Lio/selendroid/testapp/RegisterUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 139
    iget-object v0, p0, Lio/selendroid/testapp/RegisterUserActivity$1;->this$0:Lio/selendroid/testapp/RegisterUserActivity;

    invoke-virtual {v0}, Lio/selendroid/testapp/RegisterUserActivity;->finish()V

    .line 140
    return-void
.end method
