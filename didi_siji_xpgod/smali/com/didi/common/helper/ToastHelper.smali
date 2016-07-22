.class public Lcom/didi/common/helper/ToastHelper;
.super Ljava/lang/Object;
.source "ToastHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/helper/ToastHelper$IconType;
    }
.end annotation


# static fields
.field private static imageView:Landroid/widget/ImageView;

.field private static textView:Landroid/widget/TextView;

.field private static toast:Landroid/widget/Toast;

.field private static toastView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static createToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/didi/common/helper/ToastHelper;->toastView:Landroid/view/View;

    .line 40
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toastView:Landroid/view/View;

    const v1, 0x7f0802ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/didi/common/helper/ToastHelper;->imageView:Landroid/widget/ImageView;

    .line 41
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toastView:Landroid/view/View;

    const v1, 0x7f0802ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/didi/common/helper/ToastHelper;->textView:Landroid/widget/TextView;

    .line 42
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toastView:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 43
    new-instance v0, Landroid/widget/Toast;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    .line 44
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    sget-object v1, Lcom/didi/common/helper/ToastHelper;->toastView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 45
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 46
    return-void
.end method

.method private static setIcon(Lcom/didi/common/helper/ToastHelper$IconType;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "iconType"
    .parameter "imageView"

    .prologue
    const v2, 0x7f02017b

    .line 49
    if-nez p0, :cond_1

    .line 50
    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    sget-object v0, Lcom/didi/common/helper/ToastHelper$IconType;->INFO:Lcom/didi/common/helper/ToastHelper$IconType;

    invoke-virtual {v0}, Lcom/didi/common/helper/ToastHelper$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/common/helper/ToastHelper$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 56
    :cond_2
    sget-object v0, Lcom/didi/common/helper/ToastHelper$IconType;->COMPLETE:Lcom/didi/common/helper/ToastHelper$IconType;

    invoke-virtual {v0}, Lcom/didi/common/helper/ToastHelper$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/common/helper/ToastHelper$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    const v0, 0x7f020179

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 58
    :cond_3
    sget-object v0, Lcom/didi/common/helper/ToastHelper$IconType;->ERROR:Lcom/didi/common/helper/ToastHelper$IconType;

    invoke-virtual {v0}, Lcom/didi/common/helper/ToastHelper$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/common/helper/ToastHelper$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const v0, 0x7f02017a

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static showLongCompleteMessage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 80
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongCompleteMessage(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static showLongCompleteMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 124
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/didi/common/helper/ToastHelper;->createToast()V

    .line 126
    :cond_0
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    sget-object v0, Lcom/didi/common/helper/ToastHelper$IconType;->COMPLETE:Lcom/didi/common/helper/ToastHelper$IconType;

    sget-object v1, Lcom/didi/common/helper/ToastHelper;->imageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/didi/common/helper/ToastHelper;->setIcon(Lcom/didi/common/helper/ToastHelper$IconType;Landroid/widget/ImageView;)V

    .line 128
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 129
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 130
    return-void
.end method

.method public static showLongError(I)V
    .locals 1
    .parameter "stringResId"

    .prologue
    .line 76
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static showLongError(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 133
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Lcom/didi/common/helper/ToastHelper;->createToast()V

    .line 135
    :cond_0
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    sget-object v0, Lcom/didi/common/helper/ToastHelper$IconType;->ERROR:Lcom/didi/common/helper/ToastHelper$IconType;

    sget-object v1, Lcom/didi/common/helper/ToastHelper;->imageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/didi/common/helper/ToastHelper;->setIcon(Lcom/didi/common/helper/ToastHelper$IconType;Landroid/widget/ImageView;)V

    .line 137
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 138
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 139
    return-void
.end method

.method public static showLongErrorForCancelOrderWhenAccepted()V
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Lcom/didi/common/helper/ToastHelper;->createToast()V

    .line 144
    :cond_0
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->textView:Landroid/widget/TextView;

    const v1, 0x7f0b02fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    sget-object v0, Lcom/didi/common/helper/ToastHelper$IconType;->INFO:Lcom/didi/common/helper/ToastHelper$IconType;

    sget-object v1, Lcom/didi/common/helper/ToastHelper;->imageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/didi/common/helper/ToastHelper;->setIcon(Lcom/didi/common/helper/ToastHelper$IconType;Landroid/widget/ImageView;)V

    .line 146
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 147
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    return-void
.end method

.method public static showLongInfo(I)V
    .locals 1
    .parameter "stringResId"

    .prologue
    .line 64
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static showLongInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 106
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Lcom/didi/common/helper/ToastHelper;->createToast()V

    .line 108
    :cond_0
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    sget-object v0, Lcom/didi/common/helper/ToastHelper$IconType;->INFO:Lcom/didi/common/helper/ToastHelper$IconType;

    sget-object v1, Lcom/didi/common/helper/ToastHelper;->imageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/didi/common/helper/ToastHelper;->setIcon(Lcom/didi/common/helper/ToastHelper$IconType;Landroid/widget/ImageView;)V

    .line 110
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 111
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    return-void
.end method

.method public static showShortCompleted(I)V
    .locals 1
    .parameter "stringResId"

    .prologue
    .line 93
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortCompleted(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static showShortCompleted(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 84
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/didi/common/helper/ToastHelper;->createToast()V

    .line 86
    :cond_0
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget-object v0, Lcom/didi/common/helper/ToastHelper$IconType;->COMPLETE:Lcom/didi/common/helper/ToastHelper$IconType;

    sget-object v1, Lcom/didi/common/helper/ToastHelper;->imageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/didi/common/helper/ToastHelper;->setIcon(Lcom/didi/common/helper/ToastHelper$IconType;Landroid/widget/ImageView;)V

    .line 88
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 89
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    return-void
.end method

.method public static showShortError(I)V
    .locals 1
    .parameter "stringResId"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static showShortError(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 115
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Lcom/didi/common/helper/ToastHelper;->createToast()V

    .line 117
    :cond_0
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    sget-object v0, Lcom/didi/common/helper/ToastHelper$IconType;->INFO:Lcom/didi/common/helper/ToastHelper$IconType;

    sget-object v1, Lcom/didi/common/helper/ToastHelper;->imageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/didi/common/helper/ToastHelper;->setIcon(Lcom/didi/common/helper/ToastHelper$IconType;Landroid/widget/ImageView;)V

    .line 119
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 120
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 121
    return-void
.end method

.method public static showShortInfo(I)V
    .locals 1
    .parameter "stringResId"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static showShortInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 97
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/didi/common/helper/ToastHelper;->createToast()V

    .line 99
    :cond_0
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    sget-object v0, Lcom/didi/common/helper/ToastHelper$IconType;->INFO:Lcom/didi/common/helper/ToastHelper$IconType;

    sget-object v1, Lcom/didi/common/helper/ToastHelper;->imageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/didi/common/helper/ToastHelper;->setIcon(Lcom/didi/common/helper/ToastHelper$IconType;Landroid/widget/ImageView;)V

    .line 101
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 102
    sget-object v0, Lcom/didi/common/helper/ToastHelper;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    return-void
.end method
