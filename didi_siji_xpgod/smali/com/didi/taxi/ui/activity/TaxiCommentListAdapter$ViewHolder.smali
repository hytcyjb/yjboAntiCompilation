.class Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TaxiCommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter;
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
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public inflateViewHolder(Landroid/view/View;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 64
    const v0, 0x7f0800ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f08018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0802d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/component/FiveStar;

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;->level:Lcom/didi/common/ui/component/FiveStar;

    .line 67
    const v0, 0x7f0802d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;->comment:Landroid/widget/TextView;

    .line 68
    return-void
.end method
