.class public Lcom/didi/car/ui/component/CarOrderPayView;
.super Landroid/widget/LinearLayout;
.source "CarOrderPayView.java"


# static fields
.field public static final KEY_PAY_ITEM_BALANCE:I = 0x3ea

.field public static final KEY_PAY_ITEM_COUPON:I = 0x3ec

.field public static final KEY_PAY_ITEM_FIXED:I = 0x3eb

.field public static final KEY_PAY_ITEM_OTHER:I = 0x3f2

.field public static final KEY_PAY_ITEM_SPECAIL:I = 0x3ef

.field public static final KEY_PAY_ITEM_TICKET:I = 0x3ed

.field public static final KEY_PAY_ITEM_TICKET_NO_VALUE:I = 0x3ee

.field public static final KEY_PAY_ITEM_WX:I = 0x3e9


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/didi/car/ui/component/CarOrderPayItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarOrderPayView;->mMaps:Ljava/util/HashMap;

    .line 43
    invoke-direct {p0, p1}, Lcom/didi/car/ui/component/CarOrderPayView;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarOrderPayView;->mMaps:Ljava/util/HashMap;

    .line 38
    invoke-direct {p0, p1}, Lcom/didi/car/ui/component/CarOrderPayView;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private generatePayItemView(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/car/ui/component/CarOrderPayItemView;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 92
    new-instance v0, Lcom/didi/car/ui/component/CarOrderPayItemView;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarOrderPayView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/car/ui/component/CarOrderPayItemView;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, itemView:Lcom/didi/car/ui/component/CarOrderPayItemView;
    invoke-virtual {v0, p1, p2}, Lcom/didi/car/ui/component/CarOrderPayItemView;->fillData(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 95
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarOrderPayView;->addView(Landroid/view/View;)V

    .line 96
    return-object v0
.end method

.method private getPayItemStrByKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "exKey"

    .prologue
    .line 109
    const-string v0, "\u5176\u4ed6\u4f18\u60e0"

    .line 110
    .local v0, result:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 137
    :goto_0
    :pswitch_0
    return-object v0

    .line 112
    :pswitch_1
    const v1, 0x7f0b02ce

    invoke-direct {p0, v1}, Lcom/didi/car/ui/component/CarOrderPayView;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    goto :goto_0

    .line 115
    :pswitch_2
    const v1, 0x7f0b02c7

    invoke-direct {p0, v1}, Lcom/didi/car/ui/component/CarOrderPayView;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    goto :goto_0

    .line 118
    :pswitch_3
    const v1, 0x7f0b02cc

    invoke-direct {p0, v1}, Lcom/didi/car/ui/component/CarOrderPayView;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    goto :goto_0

    .line 121
    :pswitch_4
    const v1, 0x7f0b02ca

    invoke-direct {p0, v1}, Lcom/didi/car/ui/component/CarOrderPayView;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    goto :goto_0

    .line 124
    :pswitch_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    const v1, 0x7f0b02be

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/didi/car/ui/component/CarOrderPayView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_0
    const v1, 0x7f0b02c2

    invoke-direct {p0, v1}, Lcom/didi/car/ui/component/CarOrderPayView;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    goto :goto_0

    .line 133
    :pswitch_6
    move-object v0, p2

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resid"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarOrderPayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "resid"
    .parameter "formatArgs"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarOrderPayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/didi/car/ui/component/CarOrderPayView;->mContext:Landroid/content/Context;

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarOrderPayView;->setOrientation(I)V

    .line 49
    return-void
.end method


# virtual methods
.method public addPayItemView(IILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 6
    .parameter "key"
    .parameter "type"
    .parameter "defaultKey"
    .parameter "value"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0x3ed

    .line 68
    invoke-direct {p0, p1, p3}, Lcom/didi/car/ui/component/CarOrderPayView;->getPayItemStrByKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 70
    if-eq p1, v3, :cond_0

    const/16 v1, 0x3ef

    if-eq p1, v1, :cond_0

    .line 71
    const v1, 0x7f0b0426

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p4, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/didi/car/ui/component/CarOrderPayView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 74
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/didi/car/ui/component/CarOrderPayView;->generatePayItemView(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/car/ui/component/CarOrderPayItemView;

    move-result-object v0

    .line 75
    .local v0, itemView:Lcom/didi/car/ui/component/CarOrderPayItemView;
    invoke-virtual {v0, p5}, Lcom/didi/car/ui/component/CarOrderPayItemView;->setCarOderPayItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    if-ne p2, v3, :cond_3

    .line 77
    invoke-virtual {v0, v4}, Lcom/didi/car/ui/component/CarOrderPayItemView;->showArrowImage(Z)V

    .line 82
    :goto_0
    const/16 v1, 0x3ea

    if-eq p1, v1, :cond_1

    if-ne p1, v3, :cond_2

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/didi/car/ui/component/CarOrderPayView;->mMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    if-ne p1, v3, :cond_2

    .line 85
    invoke-virtual {v0, v4}, Lcom/didi/car/ui/component/CarOrderPayItemView;->showArrowImage(Z)V

    .line 89
    :cond_2
    return-void

    .line 79
    :cond_3
    invoke-virtual {v0, v5}, Lcom/didi/car/ui/component/CarOrderPayItemView;->showArrowImage(Z)V

    goto :goto_0
.end method

.method public addPayItemView(ILjava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, itemView:Lcom/didi/car/ui/component/CarOrderPayItemView;
    const/16 v1, 0x3ee

    if-ne p1, v1, :cond_2

    .line 54
    const v1, 0x7f0b0236

    invoke-direct {p0, v1}, Lcom/didi/car/ui/component/CarOrderPayView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/didi/car/ui/component/CarOrderPayView;->generatePayItemView(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/car/ui/component/CarOrderPayItemView;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarOrderPayItemView;->getCarOrderPayItemValue()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f070021

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    :goto_0
    const/16 v1, 0x3ea

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3ed

    if-ne p1, v1, :cond_1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/component/CarOrderPayView;->mMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1
    return-void

    .line 57
    :cond_2
    const-string v1, ""

    invoke-direct {p0, p1, v1}, Lcom/didi/car/ui/component/CarOrderPayView;->getPayItemStrByKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0426

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/didi/car/ui/component/CarOrderPayView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/didi/car/ui/component/CarOrderPayView;->generatePayItemView(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/car/ui/component/CarOrderPayItemView;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarOrderPayItemView;->getCarOrderPayItemValue()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f07002f

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public resetPayItemView(ILjava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/didi/car/ui/component/CarOrderPayView;->mMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/ui/component/CarOrderPayItemView;

    .line 101
    .local v0, itemView:Lcom/didi/car/ui/component/CarOrderPayItemView;
    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const v1, 0x7f0b0426

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/didi/car/ui/component/CarOrderPayView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarOrderPayItemView;->updateItemView(Ljava/lang/String;)V

    .line 103
    const/16 v1, 0x3ed

    if-ne p1, v1, :cond_0

    .line 104
    const v1, 0x7f0b02c2

    invoke-direct {p0, v1}, Lcom/didi/car/ui/component/CarOrderPayView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarOrderPayItemView;->updateItemViewKey(Ljava/lang/String;)V

    goto :goto_0
.end method
