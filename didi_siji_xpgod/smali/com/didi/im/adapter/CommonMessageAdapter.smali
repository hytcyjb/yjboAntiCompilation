.class public Lcom/didi/im/adapter/CommonMessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommonMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/im/adapter/CommonMessageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private msgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/im/adapter/CommonMessageAdapter;->msgs:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, messsges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/im/adapter/CommonMessageAdapter;->msgs:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/didi/im/adapter/CommonMessageAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/didi/im/adapter/CommonMessageAdapter;->msgs:Ljava/util/ArrayList;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/im/adapter/CommonMessageAdapter;->msgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/im/adapter/CommonMessageAdapter;->msgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, holder:Lcom/didi/im/adapter/CommonMessageAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/didi/im/adapter/CommonMessageAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300b2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v0, Lcom/didi/im/adapter/CommonMessageAdapter$ViewHolder;

    .end local v0           #holder:Lcom/didi/im/adapter/CommonMessageAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/didi/im/adapter/CommonMessageAdapter$ViewHolder;-><init>(Lcom/didi/im/adapter/CommonMessageAdapter;)V

    .line 54
    .restart local v0       #holder:Lcom/didi/im/adapter/CommonMessageAdapter$ViewHolder;
    const v2, 0x7f0803bb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/didi/im/adapter/CommonMessageAdapter$ViewHolder;->contentView:Landroid/widget/TextView;

    .line 55
    iget-object v2, p0, Lcom/didi/im/adapter/CommonMessageAdapter;->msgs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    .local v1, msg:Ljava/lang/String;
    iget-object v2, v0, Lcom/didi/im/adapter/CommonMessageAdapter$ViewHolder;->contentView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v2, p0, Lcom/didi/im/adapter/CommonMessageAdapter;->msgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    .line 58
    iget-object v2, v0, Lcom/didi/im/adapter/CommonMessageAdapter$ViewHolder;->contentView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/didi/im/adapter/CommonMessageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    :cond_0
    invoke-static {p2}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    .end local v1           #msg:Ljava/lang/String;
    :goto_0
    return-object p2

    .line 64
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/didi/im/adapter/CommonMessageAdapter$ViewHolder;
    check-cast v0, Lcom/didi/im/adapter/CommonMessageAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/didi/im/adapter/CommonMessageAdapter$ViewHolder;
    goto :goto_0
.end method
