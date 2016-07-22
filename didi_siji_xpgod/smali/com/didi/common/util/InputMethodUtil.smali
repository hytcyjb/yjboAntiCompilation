.class public Lcom/didi/common/util/InputMethodUtil;
.super Ljava/lang/Object;
.source "InputMethodUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeInputMethod(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 60
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static isInputMethodVisible(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public static setEditTextAction(Landroid/widget/EditText;)V
    .locals 0
    .parameter "editText"

    .prologue
    .line 92
    return-void
.end method

.method public static setInputMethodPanel(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 73
    if-eqz p0, :cond_0

    .line 74
    new-instance v0, Lcom/didi/common/util/InputMethodUtil$1;

    invoke-direct {v0}, Lcom/didi/common/util/InputMethodUtil$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    :cond_0
    return-void
.end method

.method public static setInputMethodVisibility(Landroid/content/Context;Landroid/widget/EditText;Z)V
    .locals 3
    .parameter "context"
    .parameter "editText"
    .parameter "visible"

    .prologue
    const/4 v2, 0x2

    .line 26
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 30
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p2, :cond_2

    .line 31
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static showInputMethod(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 65
    if-nez p0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 69
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
