.class public Lcom/didi/ddrive/ui/component/DDriveOrderPayView;
.super Landroid/widget/LinearLayout;
.source "DDriveOrderPayView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayView;->mMaps:Ljava/util/HashMap;

    .line 31
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/component/DDriveOrderPayView;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayView;->mMaps:Ljava/util/HashMap;

    .line 26
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/component/DDriveOrderPayView;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private generatePayItemView(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 50
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;

    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, itemView:Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;
    invoke-virtual {v0, p1, p2}, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->fillData(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 53
    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveOrderPayView;->addView(Landroid/view/View;)V

    .line 54
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayView;->mContext:Landroid/content/Context;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveOrderPayView;->setOrientation(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public addPayItemView(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "listener"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/didi/ddrive/ui/component/DDriveOrderPayView;->generatePayItemView(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;

    move-result-object v0

    .line 41
    .local v0, itemView:Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;
    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->getPayItemValue()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f07002f

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    if-eqz p3, :cond_0

    .line 43
    invoke-virtual {v0, p3}, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->setPayItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayView;->mMaps:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->showArrowImage(Z)V

    .line 47
    return-void
.end method
