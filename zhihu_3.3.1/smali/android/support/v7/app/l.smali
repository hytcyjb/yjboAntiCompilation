.class Landroid/support/v7/app/l;
.super Landroid/support/v7/app/k;
.source "AppCompatDelegateImplV23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/l$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/k;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/g;)V

    .line 27
    return-void
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1
    .parameter

    .prologue
    .line 33
    new-instance v0, Landroid/support/v7/app/l$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/l$a;-><init>(Landroid/support/v7/app/l;Landroid/view/Window$Callback;)V

    return-object v0
.end method
