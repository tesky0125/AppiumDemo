.class public Lio/selendroid/testapp/view/SelendroidSpinner;
.super Landroid/widget/Spinner;
.source "SelendroidSpinner.java"


# static fields
.field private static s_pSelectionChangedMethod:Ljava/lang/reflect/Method;


# instance fields
.field private lastSelected:I

.field private ob:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 28
    const/4 v3, 0x0

    sput-object v3, Lio/selendroid/testapp/view/SelendroidSpinner;->s_pSelectionChangedMethod:Ljava/lang/reflect/Method;

    .line 32
    const/4 v3, 0x0

    :try_start_0
    new-array v1, v3, [Ljava/lang/Class;

    .line 33
    .local v1, noparams:[Ljava/lang/Class;
    const-class v2, Landroid/widget/AdapterView;

    .line 35
    .local v2, targetClass:Ljava/lang/Class;
    const-string v3, "selectionChanged"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lio/selendroid/testapp/view/SelendroidSpinner;->s_pSelectionChangedMethod:Ljava/lang/reflect/Method;

    .line 36
    sget-object v3, Lio/selendroid/testapp/view/SelendroidSpinner;->s_pSelectionChangedMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 37
    sget-object v3, Lio/selendroid/testapp/view/SelendroidSpinner;->s_pSelectionChangedMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    return-void

    .line 40
    .end local v2           #targetClass:Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Custom spinner, reflection bug:"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lio/selendroid/testapp/view/SelendroidSpinner;->lastSelected:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lio/selendroid/testapp/view/SelendroidSpinner;->ob:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lio/selendroid/testapp/view/SelendroidSpinner;->lastSelected:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lio/selendroid/testapp/view/SelendroidSpinner;->ob:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lio/selendroid/testapp/view/SelendroidSpinner;->lastSelected:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lio/selendroid/testapp/view/SelendroidSpinner;->ob:Ljava/lang/Object;

    .line 56
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onClick(Landroid/content/DialogInterface;I)V

    .line 81
    invoke-virtual {p0}, Lio/selendroid/testapp/view/SelendroidSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lio/selendroid/testapp/view/SelendroidSpinner;->ob:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/selendroid/testapp/view/SelendroidSpinner;->testReflectionForSelectionChanged()V

    .line 82
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lio/selendroid/testapp/view/SelendroidSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/selendroid/testapp/view/SelendroidSpinner;->ob:Ljava/lang/Object;

    .line 75
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public testReflectionForSelectionChanged()V
    .locals 4

    .prologue
    .line 60
    const/4 v2, 0x0

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    .line 61
    .local v1, noparams:[Ljava/lang/Class;
    sget-object v2, Lio/selendroid/testapp/view/SelendroidSpinner;->s_pSelectionChangedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1           #noparams:[Ljava/lang/Class;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Custom spinner, reflection bug: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
