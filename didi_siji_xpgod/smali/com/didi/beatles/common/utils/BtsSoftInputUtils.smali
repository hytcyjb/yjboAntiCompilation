.class public Lcom/didi/beatles/common/utils/BtsSoftInputUtils;
.super Ljava/lang/Object;
.source "BtsSoftInputUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;
    }
.end annotation


# static fields
.field private static imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static hiddenSoftInput(Landroid/app/Activity;Landroid/widget/EditText;Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;)V
    .locals 3
    .parameter "activity"
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 26
    sget-object v0, Lcom/didi/beatles/common/utils/BtsSoftInputUtils;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sput-object v0, Lcom/didi/beatles/common/utils/BtsSoftInputUtils;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 28
    :cond_0
    sget-object v0, Lcom/didi/beatles/common/utils/BtsSoftInputUtils;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 29
    if-eqz p2, :cond_1

    .line 30
    invoke-interface {p2}, Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;->onHidden()V

    .line 31
    :cond_1
    return-void
.end method

.method public static showSoftInput(Landroid/app/Activity;Landroid/widget/EditText;Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;)V
    .locals 2
    .parameter "activity"
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 34
    sget-object v0, Lcom/didi/beatles/common/utils/BtsSoftInputUtils;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sput-object v0, Lcom/didi/beatles/common/utils/BtsSoftInputUtils;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 36
    :cond_0
    sget-object v0, Lcom/didi/beatles/common/utils/BtsSoftInputUtils;->imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 37
    if-eqz p2, :cond_1

    .line 38
    invoke-interface {p2}, Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;->onShow()V

    .line 39
    :cond_1
    return-void
.end method
