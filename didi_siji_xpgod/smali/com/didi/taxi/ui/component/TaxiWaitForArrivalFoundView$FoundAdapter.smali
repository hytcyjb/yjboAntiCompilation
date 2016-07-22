.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;
.super Landroid/widget/BaseAdapter;
.source "TaxiWaitForArrivalFoundView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FoundAdapter"
.end annotation


# instance fields
.field public mFoundList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/taxi/model/TaxiFound;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;


# direct methods
.method public constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/taxi/model/TaxiFound;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, foundList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/taxi/model/TaxiFound;>;"
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;->mFoundList:Ljava/util/List;

    .line 86
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;->mFoundList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;->mFoundList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 100
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 106
    move-object v4, p2

    .line 107
    .local v4, view:Landroid/view/View;
    const/4 v1, 0x0

    .line 109
    .local v1, holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$ViewHolder;
    if-nez v4, :cond_0

    .line 110
    iget-object v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;

    invoke-virtual {v5}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030104

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 111
    new-instance v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$ViewHolder;

    .end local v1           #holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$ViewHolder;
    invoke-direct {v1, v7}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$ViewHolder;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$1;)V

    .line 113
    .restart local v1       #holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$ViewHolder;
    const v5, 0x7f0805bc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 114
    const v5, 0x7f0805bd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$ViewHolder;->label:Landroid/widget/TextView;

    .line 115
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$ViewHolder;
    check-cast v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$ViewHolder;

    .line 119
    .restart local v1       #holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$ViewHolder;
    iget-object v2, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 120
    .local v2, imgIcon:Landroid/widget/ImageView;
    iget-object v3, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$ViewHolder;->label:Landroid/widget/TextView;

    .line 122
    .local v3, txtLabel:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiFound;

    .line 123
    .local v0, found:Lcom/didi/taxi/model/TaxiFound;
    iget-object v5, v0, Lcom/didi/taxi/model/TaxiFound;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v5, v0, Lcom/didi/taxi/model/TaxiFound;->imgUrl:Ljava/lang/String;

    new-instance v6, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter$1;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;Landroid/widget/ImageView;)V

    invoke-static {v5, v6}, Lcom/didi/taxi/helper/TaxiFoundHelper;->fetchImage(Ljava/lang/String;Lcom/didi/taxi/helper/TaxiFoundHelper$ImageCallback;)V

    .line 135
    return-object v4
.end method
