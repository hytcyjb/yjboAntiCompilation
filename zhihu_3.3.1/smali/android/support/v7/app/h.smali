.class public abstract Landroid/support/v7/app/h;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, -0x1

    sput v0, Landroid/support/v7/app/h;->a:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v7/app/g;)Landroid/support/v7/app/h;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/support/v7/app/h;->a(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/g;)Landroid/support/v7/app/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Dialog;Landroid/support/v7/app/g;)Landroid/support/v7/app/h;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/support/v7/app/h;->a(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/g;)Landroid/support/v7/app/h;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/g;)Landroid/support/v7/app/h;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 182
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 183
    new-instance v0, Landroid/support/v7/app/l;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/app/l;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/g;)V

    .line 189
    :goto_0
    return-object v0

    .line 184
    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 185
    new-instance v0, Landroid/support/v7/app/k;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/app/k;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/g;)V

    goto :goto_0

    .line 186
    :cond_1
    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 187
    new-instance v0, Landroid/support/v7/app/j;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/app/j;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/g;)V

    goto :goto_0

    .line 189
    :cond_2
    new-instance v0, Landroid/support/v7/app/m;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/app/m;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/g;)V

    goto :goto_0
.end method

.method public static j()I
    .locals 1

    .prologue
    .line 454
    sget v0, Landroid/support/v7/app/h;->a:I

    return v0
.end method


# virtual methods
.method public abstract a()Landroid/support/v7/app/a;
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Landroid/content/res/Configuration;)V
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract b()Landroid/view/MenuInflater;
.end method

.method public abstract b(Landroid/os/Bundle;)V
.end method

.method public abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract b(I)Z
.end method

.method public abstract c()V
.end method

.method public abstract c(Landroid/os/Bundle;)V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()Landroid/support/v7/app/b$a;
.end method

.method public abstract h()V
.end method

.method public abstract i()Z
.end method
