.class public Lcom/zhihu/android/app/ui/dialog/d;
.super Lcom/zhihu/android/app/ui/dialog/s;
.source "FeedbackDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/zhihu/android/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/dialog/s;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Fragments:\n"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/d;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->e()Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 106
    if-eqz v0, :cond_0

    .line 109
    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v0, ")\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/instabug/library/Instabug;->d()V

    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/Instabug;->a(Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/d;->dismiss()V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/d;->dismiss()V

    .line 87
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/dialog/d;->a()V

    .line 88
    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/Instabug;->b()V

    goto :goto_0

    .line 91
    :pswitch_2
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/d;->dismiss()V

    .line 92
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/dialog/d;->a()V

    .line 93
    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/Instabug;->b()V

    goto :goto_0

    .line 96
    :pswitch_3
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/d;->a:Lcom/zhihu/android/a/e;

    iget-object v1, v1, Lcom/zhihu/android/a/e;->f:Lcom/zhihu/android/base/widget/ZHSwitch;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHSwitch;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x7f1000ce
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/dialog/s;->onCreate(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    const v0, 0x7f040030

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/e;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/d;->a:Lcom/zhihu/android/a/e;

    .line 51
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/d;->a:Lcom/zhihu/android/a/e;

    iget-object v0, v0, Lcom/zhihu/android/a/e;->e:Lcom/zhihu/android/base/widget/ZHButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/d;->a:Lcom/zhihu/android/a/e;

    iget-object v0, v0, Lcom/zhihu/android/a/e;->c:Lcom/zhihu/android/base/widget/ZHButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/d;->a:Lcom/zhihu/android/a/e;

    iget-object v0, v0, Lcom/zhihu/android/a/e;->d:Lcom/zhihu/android/base/widget/ZHButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/d;->a:Lcom/zhihu/android/a/e;

    iget-object v0, v0, Lcom/zhihu/android/a/e;->f:Lcom/zhihu/android/base/widget/ZHSwitch;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/d;->a:Lcom/zhihu/android/a/e;

    iget-object v0, v0, Lcom/zhihu/android/a/e;->f:Lcom/zhihu/android/base/widget/ZHSwitch;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-static {v1}, Lcom/zhihu/android/app/util/af;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHSwitch;->setChecked(Z)V

    .line 57
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/d;->a:Lcom/zhihu/android/a/e;

    invoke-virtual {v0}, Lcom/zhihu/android/a/e;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/zhihu/android/app/ui/dialog/s;->onDestroy()V

    .line 123
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->c(Z)V

    .line 124
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/dialog/s;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/d;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 65
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 66
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/d;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 68
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/dialog/s;->setupDialog(Landroid/app/Dialog;I)V

    .line 73
    instance-of v0, p1, Landroid/support/v7/app/n;

    if-eqz v0, :cond_0

    .line 74
    check-cast p1, Landroid/support/v7/app/n;

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/n;->a(I)Z

    .line 77
    :cond_0
    return-void
.end method
