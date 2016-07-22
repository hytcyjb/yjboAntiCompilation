.class public Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TaxiCommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$1;,
        Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/didi/taxi/model/TaxiComment;",
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
            "Lcom/didi/taxi/model/TaxiComment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Lcom/didi/taxi/model/TaxiComment;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
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

    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, holder:Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;
    move-object v2, p2

    .line 35
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;
    check-cast v1, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;

    .line 45
    .restart local v1       #holder:Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiComment;

    .line 46
    .local v0, comment:Lcom/didi/taxi/model/TaxiComment;
    iget-object v3, v1, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/didi/taxi/model/TaxiComment;->passengerPhone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v3, v1, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiComment;->getCommentTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v3, v1, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;->level:Lcom/didi/common/ui/component/FiveStar;

    iget v4, v0, Lcom/didi/taxi/model/TaxiComment;->commentLevel:I

    invoke-virtual {v3, v4}, Lcom/didi/common/ui/component/FiveStar;->setLevel(I)V

    .line 49
    iget-object v3, v1, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;->comment:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/didi/taxi/model/TaxiComment;->commentTxt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-object v2

    .line 38
    .end local v0           #comment:Lcom/didi/taxi/model/TaxiComment;
    :cond_0
    new-instance v1, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;

    .end local v1           #holder:Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;
    invoke-direct {v1, v5}, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;-><init>(Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$1;)V

    .line 39
    .restart local v1       #holder:Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;
    invoke-virtual {p0}, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030076

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 40
    invoke-static {v2}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 41
    invoke-virtual {v1, v2}, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter$ViewHolder;->inflateViewHolder(Landroid/view/View;)V

    .line 42
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
