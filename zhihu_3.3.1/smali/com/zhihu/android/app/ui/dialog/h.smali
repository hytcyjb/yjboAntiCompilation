.class public Lcom/zhihu/android/app/ui/dialog/h;
.super Landroid/support/v4/app/k;
.source "MessageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/dialog/h$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcom/zhihu/android/app/ui/dialog/h$a;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/k;-><init>()V

    .line 46
    const v0, 0x1040013

    const/4 v1, -0x1

    const v2, 0x1040009

    invoke-virtual {p0, v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/h;->a(III)V

    .line 47
    return-void
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lcom/zhihu/android/app/ui/dialog/h;->c:I

    .line 55
    iput p2, p0, Lcom/zhihu/android/app/ui/dialog/h;->d:I

    .line 56
    iput p3, p0, Lcom/zhihu/android/app/ui/dialog/h;->e:I

    .line 57
    return-void
.end method

.method public a(Lcom/zhihu/android/app/ui/dialog/h$a;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/zhihu/android/app/ui/dialog/h;->a:Lcom/zhihu/android/app/ui/dialog/h$a;

    .line 115
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/zhihu/android/app/ui/dialog/h;->b:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    packed-switch p2, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/h;->a:Lcom/zhihu/android/app/ui/dialog/h$a;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/h;->a:Lcom/zhihu/android/app/ui/dialog/h$a;

    invoke-interface {v0, p0}, Lcom/zhihu/android/app/ui/dialog/h$a;->a(Lcom/zhihu/android/app/ui/dialog/h;)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/h;->a:Lcom/zhihu/android/app/ui/dialog/h$a;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/h;->a:Lcom/zhihu/android/app/ui/dialog/h$a;

    invoke-interface {v0, p0}, Lcom/zhihu/android/app/ui/dialog/h$a;->b(Lcom/zhihu/android/app/ui/dialog/h;)V

    goto :goto_0

    .line 104
    :pswitch_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/h;->a:Lcom/zhihu/android/app/ui/dialog/h$a;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/h;->a:Lcom/zhihu/android/app/ui/dialog/h$a;

    invoke-interface {v0, p0}, Lcom/zhihu/android/app/ui/dialog/h$a;->c(Lcom/zhihu/android/app/ui/dialog/h;)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter

    .prologue
    .line 62
    new-instance v0, Landroid/support/v7/app/e$a;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/h;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/e$a;-><init>(Landroid/content/Context;)V

    .line 63
    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/e$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/e$a;

    .line 65
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/h;->a()Landroid/view/View;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0, v1}, Landroid/support/v7/app/e$a;->b(Landroid/view/View;)Landroid/support/v7/app/e$a;

    .line 71
    :cond_0
    iget v1, p0, Lcom/zhihu/android/app/ui/dialog/h;->c:I

    if-lez v1, :cond_1

    .line 72
    iget v1, p0, Lcom/zhihu/android/app/ui/dialog/h;->c:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/e$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;

    .line 75
    :cond_1
    iget v1, p0, Lcom/zhihu/android/app/ui/dialog/h;->d:I

    if-lez v1, :cond_2

    .line 76
    iget v1, p0, Lcom/zhihu/android/app/ui/dialog/h;->d:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/e$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;

    .line 79
    :cond_2
    iget v1, p0, Lcom/zhihu/android/app/ui/dialog/h;->e:I

    if-lez v1, :cond_3

    .line 80
    iget v1, p0, Lcom/zhihu/android/app/ui/dialog/h;->e:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/e$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;

    .line 83
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/app/e$a;->b()Landroid/support/v7/app/e;

    move-result-object v0

    return-object v0
.end method
