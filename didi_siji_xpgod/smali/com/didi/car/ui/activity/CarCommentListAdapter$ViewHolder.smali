.class Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CarCommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/activity/CarCommentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public comment:Landroid/widget/TextView;

.field public level:Lcom/didi/common/ui/component/FiveStar;

.field public phone:Landroid/widget/TextView;

.field public time:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/car/ui/activity/CarCommentListAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public inflateViewHolder(Landroid/view/View;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 61
    const v0, 0x7f0800ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f08018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0802d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/component/FiveStar;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;->level:Lcom/didi/common/ui/component/FiveStar;

    .line 64
    const v0, 0x7f0802d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;->comment:Landroid/widget/TextView;

    .line 65
    return-void
.end method
