.class public Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommonContactInviteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/database/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mToInviteSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/didi/common/database/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/database/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/database/Contact;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->mList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->mToInviteSet:Ljava/util/HashSet;

    .line 39
    invoke-static {}, Lcom/didi/common/ui/component/UiHelper;->loadDefaultAvatar()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->mDefaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->mToInviteSet:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 56
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getToInviteContacts()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/didi/common/database/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->mToInviteSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, holder:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 63
    new-instance v0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;

    .end local v0           #holder:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;-><init>(Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;)V

    .line 64
    .restart local v0       #holder:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;
    invoke-virtual {v0, p1}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->create(I)Landroid/view/View;

    move-result-object p2

    .line 68
    :goto_0
    invoke-virtual {v0, p1}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->update(I)V

    .line 69
    return-object p2

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;
    check-cast v0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;
    goto :goto_0
.end method

.method public notifyUpdate(Landroid/widget/ListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 212
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 213
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 214
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;

    .line 215
    .local v2, holder:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;
    if-nez v2, :cond_0

    .line 212
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v2}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->renderPhoto()V

    goto :goto_1

    .line 219
    .end local v0           #child:Landroid/view/View;
    .end local v2           #holder:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;
    :cond_1
    return-void
.end method

.method public onScrollEnd(Landroid/widget/AbsListView;)V
    .locals 6
    .parameter "listView"

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 190
    .local v0, childCount:I
    const/4 v4, 0x0

    .line 191
    .local v4, v:Landroid/view/View;
    const/4 v1, 0x0

    .line 192
    .local v1, holder:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;
    const/4 v3, 0x0

    .line 193
    .local v3, tag:Ljava/lang/Object;
    const/4 v2, 0x0

    .end local v3           #tag:Ljava/lang/Object;
    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 194
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 195
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 196
    .restart local v3       #tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;

    if-nez v5, :cond_1

    .line 193
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 198
    check-cast v1, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;

    .line 199
    invoke-virtual {v1}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->renderPhoto()V

    goto :goto_1

    .line 201
    .end local v3           #tag:Ljava/lang/Object;
    :cond_2
    return-void
.end method
