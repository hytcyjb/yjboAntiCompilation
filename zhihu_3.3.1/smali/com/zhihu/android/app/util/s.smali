.class public Lcom/zhihu/android/app/util/s;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    if-nez p0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    if-eqz p1, :cond_0

    .line 35
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 48
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
