.class public Lcom/zhihu/android/app/ui/dialog/t;
.super Lcom/zhihu/android/app/ui/dialog/s;
.source "ZhihuAuthDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/dialog/t$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:Lcom/zhihu/android/app/ui/dialog/t$a;

.field private d:Lcom/zhihu/android/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/dialog/s;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;[BLcom/zhihu/android/app/ui/dialog/t$a;)Lcom/zhihu/android/app/ui/dialog/t;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v0, Lcom/zhihu/android/app/ui/dialog/t;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/dialog/t;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 54
    const-string v2, "EXTRA_ZHIHU_APPNAME"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "EXTRA_ZHIHU_ICON"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/t;->setArguments(Landroid/os/Bundle;)V

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/t;->setCancelable(Z)V

    .line 58
    invoke-virtual {v0, p2}, Lcom/zhihu/android/app/ui/dialog/t;->a(Lcom/zhihu/android/app/ui/dialog/t$a;)V

    .line 60
    return-object v0
.end method


# virtual methods
.method public a(Lcom/zhihu/android/app/ui/dialog/t$a;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zhihu/android/app/ui/dialog/t;->c:Lcom/zhihu/android/app/ui/dialog/t$a;

    .line 65
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/t;->d:Lcom/zhihu/android/a/c;

    iget-object v0, v0, Lcom/zhihu/android/a/c;->e:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    invoke-virtual {v0, v4}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/t;->d:Lcom/zhihu/android/a/c;

    iget-object v0, v0, Lcom/zhihu/android/a/c;->f:Lcom/zhihu/android/base/widget/ZHButton;

    invoke-virtual {v0, v4}, Lcom/zhihu/android/base/widget/ZHButton;->setEnabled(Z)V

    .line 130
    return-void

    .line 116
    :pswitch_0
    const-string v0, "Oauth"

    const-string v1, "Tap"

    const-string v2, "Accept_Authorize_ZhihuAuthDialog"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/t;->d:Lcom/zhihu/android/a/c;

    iget-object v0, v0, Lcom/zhihu/android/a/c;->e:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->a()V

    .line 118
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/t;->c:Lcom/zhihu/android/app/ui/dialog/t$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/zhihu/android/app/ui/dialog/t$a;->a_(Z)V

    goto :goto_0

    .line 121
    :pswitch_1
    const-string v0, "Oauth"

    const-string v1, "Tap"

    const-string v2, "Cancel_Authorize_ZhihuAuthDialog"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/t;->c:Lcom/zhihu/android/app/ui/dialog/t$a;

    invoke-interface {v0, v4}, Lcom/zhihu/android/app/ui/dialog/t$a;->a_(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/t;->dismiss()V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x7f1000ca
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/dialog/s;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/t;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    const-string v1, "EXTRA_ZHIHU_APPNAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhihu/android/app/ui/dialog/t;->a:Ljava/lang/String;

    .line 75
    const-string v1, "EXTRA_ZHIHU_ICON"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/t;->b:[B

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/t;->c:Lcom/zhihu/android/app/ui/dialog/t$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zhihu/android/app/ui/dialog/t$a;->a_(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/t;->dismiss()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    const v0, 0x7f04002e

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/c;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/t;->d:Lcom/zhihu/android/a/c;

    .line 87
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/t;->d:Lcom/zhihu/android/a/c;

    invoke-virtual {v0}, Lcom/zhihu/android/a/c;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/dialog/s;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/t;->d:Lcom/zhihu/android/a/c;

    iget-object v0, v0, Lcom/zhihu/android/a/c;->e:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/t;->d:Lcom/zhihu/android/a/c;

    iget-object v0, v0, Lcom/zhihu/android/a/c;->f:Lcom/zhihu/android/base/widget/ZHButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/t;->d:Lcom/zhihu/android/a/c;

    iget-object v0, v0, Lcom/zhihu/android/a/c;->d:Lcom/zhihu/android/base/widget/ZHTextView;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/t;->d:Lcom/zhihu/android/a/c;

    iget-object v0, v0, Lcom/zhihu/android/a/c;->g:Lcom/zhihu/android/base/widget/ZHTextView;

    const v1, 0x7f09022a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zhihu/android/app/ui/dialog/t;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/t;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/t;->d:Lcom/zhihu/android/a/c;

    iget-object v0, v0, Lcom/zhihu/android/a/c;->c:Lcom/zhihu/android/base/widget/ZHImageView;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/t;->b:[B

    invoke-static {v1}, Lcom/zhihu/android/app/util/h;->a([B)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/zhihu/android/app/util/h;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/t;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 105
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 106
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/t;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 109
    const-string v0, "Oauth"

    const-string v1, "View"

    const-string v2, "ZhihuAuthDialog"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    return-void
.end method
