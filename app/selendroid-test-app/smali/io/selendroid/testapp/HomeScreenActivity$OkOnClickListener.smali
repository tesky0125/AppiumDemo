.class final Lio/selendroid/testapp/HomeScreenActivity$OkOnClickListener;
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
    name = "OkOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/selendroid/testapp/HomeScreenActivity;


# direct methods
.method private constructor <init>(Lio/selendroid/testapp/HomeScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lio/selendroid/testapp/HomeScreenActivity$OkOnClickListener;->this$0:Lio/selendroid/testapp/HomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/selendroid/testapp/HomeScreenActivity;Lio/selendroid/testapp/HomeScreenActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lio/selendroid/testapp/HomeScreenActivity$OkOnClickListener;-><init>(Lio/selendroid/testapp/HomeScreenActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 188
    iget-object v0, p0, Lio/selendroid/testapp/HomeScreenActivity$OkOnClickListener;->this$0:Lio/selendroid/testapp/HomeScreenActivity;

    invoke-virtual {v0}, Lio/selendroid/testapp/HomeScreenActivity;->finish()V

    .line 189
    return-void
.end method
