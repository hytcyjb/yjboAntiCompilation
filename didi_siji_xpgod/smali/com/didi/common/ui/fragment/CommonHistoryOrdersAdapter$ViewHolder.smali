.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private btsOrderImg:Lx/ImageView;

.field public carOrderImg:Lx/ImageView;

.field private ddriveOrderImg:Lx/ImageView;

.field public imgArrow:Lx/ImageView;

.field public isShow:Z

.field public mDateView:Landroid/widget/TextView;

.field public mFinishView:Landroid/widget/TextView;

.field public mFrom:Landroid/widget/TextView;

.field private mIncreaseTipsView:Landroid/widget/TextView;

.field public mNoOrderTip:Lx/ImageView;

.field public mState:Landroid/widget/TextView;

.field public mTimeView:Landroid/widget/TextView;

.field public mTo:Landroid/widget/TextView;

.field private mUnreadLongView:Landroid/widget/TextView;

.field private mUnreadView:Landroid/widget/TextView;

.field public mark:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mIncreaseTipsView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mIncreaseTipsView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->btsOrderImg:Lx/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;Lx/ImageView;)Lx/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->btsOrderImg:Lx/ImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->ddriveOrderImg:Lx/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;Lx/ImageView;)Lx/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->ddriveOrderImg:Lx/ImageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mUnreadView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mUnreadView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mUnreadLongView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->mUnreadLongView:Landroid/widget/TextView;

    return-object p1
.end method


# virtual methods
.method public hideAllImg()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 282
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->carOrderImg:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->btsOrderImg:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter$ViewHolder;->ddriveOrderImg:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 285
    return-void
.end method
