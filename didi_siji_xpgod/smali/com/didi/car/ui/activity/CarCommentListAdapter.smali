.class public Lcom/didi/car/ui/activity/CarCommentListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CarCommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/activity/CarCommentListAdapter$1;,
        Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/didi/car/model/CarComment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/model/CarComment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarComment;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 30
    const/4 v1, 0x0

    .line 31
    .local v1, holder:Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;
    move-object v2, p2

    .line 32
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;
    check-cast v1, Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;

    .line 42
    .restart local v1       #holder:Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/activity/CarCommentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarComment;

    .line 43
    .local v0, comment:Lcom/didi/car/model/CarComment;
    iget-object v3, v1, Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/didi/car/model/CarComment;->getPassengerPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v3, v1, Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/didi/car/model/CarComment;->getCommentTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v3, v1, Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;->level:Lcom/didi/common/ui/component/FiveStar;

    invoke-virtual {v0}, Lcom/didi/car/model/CarComment;->getCommentLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/didi/common/ui/component/FiveStar;->setLevel(I)V

    .line 46
    iget-object v3, v1, Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;->comment:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/didi/car/model/CarComment;->getCommentTxt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-object v2

    .line 35
    .end local v0           #comment:Lcom/didi/car/model/CarComment;
    :cond_0
    new-instance v1, Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;

    .end local v1           #holder:Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;
    invoke-direct {v1, v5}, Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;-><init>(Lcom/didi/car/ui/activity/CarCommentListAdapter$1;)V

    .line 36
    .restart local v1       #holder:Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCommentListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030076

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 37
    invoke-static {v2}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 38
    invoke-virtual {v1, v2}, Lcom/didi/car/ui/activity/CarCommentListAdapter$ViewHolder;->inflateViewHolder(Landroid/view/View;)V

    .line 39
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
