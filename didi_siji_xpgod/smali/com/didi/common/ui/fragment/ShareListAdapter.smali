.class public Lcom/didi/common/ui/fragment/ShareListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ShareListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/fragment/ShareListAdapter$1;,
        Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private mToInviteSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;>;"
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 47
    iput-object p1, p0, Lcom/didi/common/ui/fragment/ShareListAdapter;->mData:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter;->mToInviteSet:Ljava/util/HashSet;

    .line 49
    invoke-static {}, Lcom/didi/common/ui/component/UiHelper;->loadDefaultAvatar()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 50
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/ShareListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter;->mQueue:Lcom/android/volley/RequestQueue;

    .line 51
    new-instance v0, Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareListAdapter;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/didi/common/util/BitmapCache;

    invoke-direct {v2}, Lcom/didi/common/util/BitmapCache;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/fragment/ShareListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/ui/fragment/ShareListAdapter;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter;->mDefaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/ui/fragment/ShareListAdapter;)Lcom/android/volley/toolbox/ImageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/common/ui/fragment/ShareListAdapter;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter;->mToInviteSet:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public getAtString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/didi/common/ui/fragment/ShareListAdapter;->mToInviteSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;

    .line 146
    .local v2, item:Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;
    iget-object v3, v2, Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;->mName:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    iget-object v3, v2, Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;->mLinkName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 152
    .end local v2           #item:Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 128
    if-nez p2, :cond_0

    .line 129
    new-instance v0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;-><init>(Lcom/didi/common/ui/fragment/ShareListAdapter;Lcom/didi/common/ui/fragment/ShareListAdapter$1;)V

    .line 130
    .local v0, holder:Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;
    invoke-virtual {v0, p1}, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->create(I)Landroid/view/View;

    move-result-object p2

    .line 134
    :goto_0
    invoke-virtual {v0, p1}, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->update(I)V

    .line 135
    return-object p2

    .line 132
    .end local v0           #holder:Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public notifyUpdate(Landroid/widget/ListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 184
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 185
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;

    .line 187
    .local v2, holder:Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;
    if-nez v2, :cond_0

    .line 184
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {v2}, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->renderPhoto()V

    goto :goto_1

    .line 191
    .end local v0           #child:Landroid/view/View;
    .end local v2           #holder:Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;
    :cond_1
    return-void
.end method

.method public onScrollEnd(Landroid/widget/AbsListView;)V
    .locals 6
    .parameter "listView"

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 162
    .local v0, childCount:I
    const/4 v4, 0x0

    .line 163
    .local v4, v:Landroid/view/View;
    const/4 v1, 0x0

    .line 164
    .local v1, holder:Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;
    const/4 v3, 0x0

    .line 165
    .local v3, tag:Ljava/lang/Object;
    const/4 v2, 0x0

    .end local v3           #tag:Ljava/lang/Object;
    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 166
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 167
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 168
    .restart local v3       #tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;

    if-nez v5, :cond_1

    .line 165
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 170
    check-cast v1, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;

    .line 171
    invoke-virtual {v1}, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->renderPhoto()V

    goto :goto_1

    .line 173
    .end local v3           #tag:Ljava/lang/Object;
    :cond_2
    return-void
.end method
