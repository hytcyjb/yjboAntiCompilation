.class Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;
.super Lm/framework/ui/widget/viewpager/ViewPagerAdapter;
.source "PlatformGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlatformAdapter"
.end annotation


# instance fields
.field private callback:Landroid/view/View$OnClickListener;

.field private girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

.field private lines:I

.field private logos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)V
    .locals 14
    .parameter "platformGridView"

    .prologue
    .line 260
    invoke-direct {p0}, Lm/framework/ui/widget/viewpager/ViewPagerAdapter;-><init>()V

    .line 261
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    .line 262
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    .line 263
    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$000(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)[Lcn/sharesdk/framework/Platform;

    move-result-object v9

    .line 264
    .local v9, platforms:[Lcn/sharesdk/framework/Platform;
    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$100(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Ljava/util/HashMap;

    move-result-object v3

    .line 265
    .local v3, hiddenPlatforms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v9, :cond_3

    .line 266
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 267
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v10, ps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/sharesdk/framework/Platform;>;"
    move-object v1, v9

    .local v1, arr$:[Lcn/sharesdk/framework/Platform;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v7, v1, v5

    .line 269
    .local v7, p:Lcn/sharesdk/framework/Platform;
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 268
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 275
    .end local v7           #p:Lcn/sharesdk/framework/Platform;
    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v9, v12, [Lcn/sharesdk/framework/Platform;

    .line 276
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v12, v9

    if-ge v4, v12, :cond_2

    .line 277
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/sharesdk/framework/Platform;

    aput-object v12, v9, v4

    .line 276
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 281
    .end local v1           #arr$:[Lcn/sharesdk/framework/Platform;
    .end local v4           #i:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v10           #ps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/sharesdk/framework/Platform;>;"
    :cond_2
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    :cond_3
    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$200(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Ljava/util/ArrayList;

    move-result-object v2

    .line 284
    .local v2, customers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/CustomerLogo;>;"
    if-eqz v2, :cond_4

    .line 285
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    :cond_4
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->callback:Landroid/view/View$OnClickListener;

    .line 288
    const/4 v12, 0x0

    iput-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    .line 290
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    if-eqz v12, :cond_6

    .line 291
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 292
    .local v11, size:I
    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$300(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I

    move-result v0

    .line 293
    .local v0, PAGE_SIZE:I
    div-int v8, v11, v0

    .line 294
    .local v8, pageCount:I
    rem-int v12, v11, v0

    if-lez v12, :cond_5

    .line 295
    add-int/lit8 v8, v8, 0x1

    .line 297
    :cond_5
    new-array v12, v8, [Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    iput-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    .line 299
    .end local v0           #PAGE_SIZE:I
    .end local v8           #pageCount:I
    .end local v11           #size:I
    :cond_6
    return-void
.end method

.method static synthetic access$800(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->callback:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    array-length v0, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 306
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    aget-object v6, v6, p1

    if-nez v6, :cond_4

    .line 307
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I
    invoke-static {v6}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$300(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I

    move-result v5

    .line 308
    .local v5, pageSize:I
    mul-int v1, v5, p1

    .line 309
    .local v1, curSize:I
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    if-nez v6, :cond_1

    const/4 v4, 0x0

    .line 310
    .local v4, listSize:I
    :goto_0
    add-int v6, v1, v5

    if-le v6, v4, :cond_0

    .line 311
    sub-int v5, v4, v1

    .line 313
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    .line 314
    .local v2, gridBean:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 315
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    add-int v7, v1, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v3

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 309
    .end local v2           #gridBean:[Ljava/lang/Object;
    .end local v3           #i:I
    .end local v4           #listSize:I
    :cond_1
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    .line 318
    .restart local v2       #gridBean:[Ljava/lang/Object;
    .restart local v3       #i:I
    .restart local v4       #listSize:I
    :cond_2
    if-nez p1, :cond_3

    .line 319
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I
    invoke-static {v6}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$400(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I

    move-result v0

    .line 320
    .local v0, COLUMN_PER_LINE:I
    array-length v6, v2

    div-int/2addr v6, v0

    iput v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->lines:I

    .line 321
    array-length v6, v2

    rem-int/2addr v6, v0

    if-lez v6, :cond_3

    .line 322
    iget v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->lines:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->lines:I

    .line 325
    .end local v0           #COLUMN_PER_LINE:I
    :cond_3
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    new-instance v7, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    invoke-direct {v7, p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)V

    aput-object v7, v6, p1

    .line 326
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    aget-object v6, v6, p1

    iget v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->lines:I

    invoke-virtual {v6, v7, v2}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->setData(I[Ljava/lang/Object;)V

    .line 329
    .end local v1           #curSize:I
    .end local v2           #gridBean:[Ljava/lang/Object;
    .end local v3           #i:I
    .end local v4           #listSize:I
    .end local v5           #pageSize:I
    :cond_4
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    aget-object v6, v6, p1

    return-object v6
.end method

.method public onScreenChange(II)V
    .locals 4
    .parameter "currentScreen"
    .parameter "lastScreen"

    .prologue
    .line 334
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;
    invoke-static {v2}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$500(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)[Landroid/widget/ImageView;

    move-result-object v1

    .line 335
    .local v1, points:[Landroid/widget/ImageView;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 336
    aget-object v2, v1, v0

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->grayPoint:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$600(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_0
    aget-object v2, v1, p1

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bluePoint:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$700(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 340
    return-void
.end method
