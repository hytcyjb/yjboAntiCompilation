.class Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;
.super Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;
.source "FollowList.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/onekeyshare/FollowList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FollowAdapter"
.end annotation


# instance fields
.field private bmChd:Landroid/graphics/Bitmap;

.field private bmUnch:Landroid/graphics/Bitmap;

.field private curPage:I

.field private follows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/FollowList$Following;",
            ">;"
        }
    .end annotation
.end field

.field private hasNext:Z

.field private llHeader:Lcn/sharesdk/onekeyshare/FollowList$PRTHeader;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/sharesdk/onekeyshare/FollowList$Following;",
            ">;"
        }
    .end annotation
.end field

.field private platform:Lcn/sharesdk/framework/Platform;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V

    .line 170
    const/4 v1, -0x1

    iput v1, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->curPage:I

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->hasNext:Z

    .line 172
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->map:Ljava/util/HashMap;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->follows:Ljava/util/ArrayList;

    .line 175
    new-instance v1, Lcn/sharesdk/onekeyshare/FollowList$PRTHeader;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/sharesdk/onekeyshare/FollowList$PRTHeader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->llHeader:Lcn/sharesdk/onekeyshare/FollowList$PRTHeader;

    .line 177
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "auth_follow_cb_chd"

    invoke-static {v1, v2}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 178
    .local v0, resId:I
    if-lez v0, :cond_0

    .line 179
    invoke-virtual {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->bmChd:Landroid/graphics/Bitmap;

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "auth_follow_cb_unc"

    invoke-static {v1, v2}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 182
    if-lez v0, :cond_1

    .line 183
    invoke-virtual {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->bmUnch:Landroid/graphics/Bitmap;

    .line 185
    :cond_1
    return-void
.end method

.method private next()V
    .locals 4

    .prologue
    .line 193
    iget-boolean v0, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->hasNext:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->platform:Lcn/sharesdk/framework/Platform;

    const/16 v1, 0xf

    iget v2, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->curPage:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/framework/Platform;->listFriend(IILjava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method private parseList(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 20
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/FollowList$Following;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v18

    if-gtz v18, :cond_2

    .line 319
    :cond_0
    const/4 v3, 0x0

    .line 414
    :cond_1
    :goto_0
    return-object v3

    .line 322
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v3, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/FollowList$Following;>;"
    const-string v18, "SinaWeibo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->platform:Lcn/sharesdk/framework/Platform;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 326
    const-string v18, "users"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 328
    .local v17, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/HashMap;

    .line 329
    .local v16, user:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v18, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 330
    .local v15, uid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->map:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 331
    new-instance v5, Lcn/sharesdk/onekeyshare/FollowList$Following;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lcn/sharesdk/onekeyshare/FollowList$Following;-><init>(Lcn/sharesdk/onekeyshare/FollowList$1;)V

    .line 332
    .local v5, following:Lcn/sharesdk/onekeyshare/FollowList$Following;
    iput-object v15, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->uid:Ljava/lang/String;

    .line 333
    const-string v18, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->screeName:Ljava/lang/String;

    .line 334
    const-string v18, "description"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->description:Ljava/lang/String;

    .line 335
    const-string v18, "profile_image_url"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->icon:Ljava/lang/String;

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->map:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->uid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 340
    .end local v5           #following:Lcn/sharesdk/onekeyshare/FollowList$Following;
    .end local v15           #uid:Ljava/lang/String;
    .end local v16           #user:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    const-string v18, "total_number"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->map:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->hasNext:Z

    goto/16 :goto_0

    :cond_5
    const/16 v18, 0x0

    goto :goto_2

    .line 342
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v17           #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_6
    const-string v18, "TencentWeibo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->platform:Lcn/sharesdk/framework/Platform;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 343
    const-string v18, "hasnext"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-nez v18, :cond_9

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->hasNext:Z

    .line 346
    const-string v18, "info"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 348
    .local v9, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 349
    .local v8, info:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 350
    .restart local v15       #uid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->map:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 351
    new-instance v5, Lcn/sharesdk/onekeyshare/FollowList$Following;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lcn/sharesdk/onekeyshare/FollowList$Following;-><init>(Lcn/sharesdk/onekeyshare/FollowList$1;)V

    .line 352
    .restart local v5       #following:Lcn/sharesdk/onekeyshare/FollowList$Following;
    const-string v18, "nick"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->screeName:Ljava/lang/String;

    .line 353
    iput-object v15, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->uid:Ljava/lang/String;

    .line 355
    const-string v18, "tweet"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 357
    .local v14, tweets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, i:I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_8

    .line 358
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    .line 359
    .local v13, tweet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v18, "text"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->description:Ljava/lang/String;

    .line 362
    .end local v13           #tweet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "head"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/100"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->icon:Ljava/lang/String;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->map:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->uid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 343
    .end local v5           #following:Lcn/sharesdk/onekeyshare/FollowList$Following;
    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #info:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9           #infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v14           #tweets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v15           #uid:Ljava/lang/String;
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 368
    :cond_a
    const-string v18, "Facebook"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->platform:Lcn/sharesdk/framework/Platform;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 371
    const-string v18, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 373
    .local v4, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_b
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 374
    .local v2, d:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v18, "id"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 375
    .restart local v15       #uid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->map:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 376
    new-instance v5, Lcn/sharesdk/onekeyshare/FollowList$Following;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lcn/sharesdk/onekeyshare/FollowList$Following;-><init>(Lcn/sharesdk/onekeyshare/FollowList$1;)V

    .line 377
    .restart local v5       #following:Lcn/sharesdk/onekeyshare/FollowList$Following;
    iput-object v15, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->uid:Ljava/lang/String;

    .line 378
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->screeName:Ljava/lang/String;

    .line 380
    const-string v18, "picture"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 381
    .local v12, picture:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v12, :cond_c

    .line 383
    const-string v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 384
    .local v10, pData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_c

    .line 385
    const-string v18, "url"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->icon:Ljava/lang/String;

    .line 388
    .end local v10           #pData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->map:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->uid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 393
    .end local v2           #d:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #following:Lcn/sharesdk/onekeyshare/FollowList$Following;
    .end local v12           #picture:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15           #uid:Ljava/lang/String;
    :cond_d
    const-string v18, "paging"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 394
    .local v11, paging:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v18, "next"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->hasNext:Z

    goto/16 :goto_0

    .line 396
    .end local v4           #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v11           #paging:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_e
    const-string v18, "Twitter"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->platform:Lcn/sharesdk/framework/Platform;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 399
    const-string v18, "users"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 401
    .restart local v17       #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_f
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/HashMap;

    .line 402
    .restart local v16       #user:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v18, "screen_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 403
    .restart local v15       #uid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->map:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_f

    .line 404
    new-instance v5, Lcn/sharesdk/onekeyshare/FollowList$Following;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lcn/sharesdk/onekeyshare/FollowList$Following;-><init>(Lcn/sharesdk/onekeyshare/FollowList$1;)V

    .line 405
    .restart local v5       #following:Lcn/sharesdk/onekeyshare/FollowList$Following;
    iput-object v15, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->uid:Ljava/lang/String;

    .line 406
    const-string v18, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->screeName:Ljava/lang/String;

    .line 407
    const-string v18, "description"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->description:Ljava/lang/String;

    .line 408
    const-string v18, "profile_image_url"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->icon:Ljava/lang/String;

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->map:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->uid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->follows:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->follows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->llHeader:Lcn/sharesdk/onekeyshare/FollowList$PRTHeader;

    return-object v0
.end method

.method public getItem(I)Lcn/sharesdk/onekeyshare/FollowList$Following;
    .locals 1
    .parameter "position"

    .prologue
    .line 271
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->follows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/FollowList$Following;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowList$Following;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 275
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 199
    const/4 v6, 0x0

    .line 200
    .local v6, item:Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;
    if-nez p2, :cond_1

    .line 201
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 202
    .local v7, llItem:Landroid/widget/LinearLayout;
    new-instance v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;

    .end local v6           #item:Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;
    const/4 v12, 0x0

    invoke-direct {v6, v12}, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;-><init>(Lcn/sharesdk/onekeyshare/FollowList$1;)V

    .line 203
    .restart local v6       #item:Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 204
    move-object/from16 p2, v7

    .line 206
    new-instance v12, Lm/framework/ui/widget/asyncview/AsyncImageView;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lm/framework/ui/widget/asyncview/AsyncImageView;-><init>(Landroid/content/Context;)V

    iput-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->aivIcon:Lm/framework/ui/widget/asyncview/AsyncImageView;

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0x34

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v4

    .line 208
    .local v4, dp_52:I
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0xa

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    .line 209
    .local v2, dp_10:I
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x5

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    .line 210
    .local v3, dp_5:I
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 211
    .local v10, lpIcon:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v12, 0x10

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 212
    invoke-virtual {v10, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 213
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->aivIcon:Lm/framework/ui/widget/asyncview/AsyncImageView;

    invoke-virtual {v12, v10}, Lm/framework/ui/widget/asyncview/AsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->aivIcon:Lm/framework/ui/widget/asyncview/AsyncImageView;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 217
    .local v8, llText:Landroid/widget/LinearLayout;
    const/4 v12, 0x0

    invoke-virtual {v8, v12, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 218
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    .local v11, lpText:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v12, 0x10

    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 222
    const/high16 v12, 0x3f80

    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 223
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    new-instance v12, Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->tvName:Landroid/widget/TextView;

    .line 227
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->tvName:Landroid/widget/TextView;

    const/high16 v13, -0x100

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->tvName:Landroid/widget/TextView;

    const/4 v13, 0x1

    const/high16 v14, 0x4190

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 229
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->tvName:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->setSingleLine()V

    .line 230
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->tvName:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    new-instance v12, Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->tvSign:Landroid/widget/TextView;

    .line 233
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->tvSign:Landroid/widget/TextView;

    const/high16 v13, 0x7f00

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->tvSign:Landroid/widget/TextView;

    const/4 v13, 0x1

    const/high16 v14, 0x4160

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 235
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->tvSign:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->setSingleLine()V

    .line 236
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->tvSign:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    new-instance v12, Landroid/widget/ImageView;

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->ivCheck:Landroid/widget/ImageView;

    .line 239
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->ivCheck:Landroid/widget/ImageView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v2, v15}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 240
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v9, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 242
    .local v9, lpCheck:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v12, 0x10

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 243
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->ivCheck:Landroid/widget/ImageView;

    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->ivCheck:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    .end local v2           #dp_10:I
    .end local v3           #dp_5:I
    .end local v4           #dp_52:I
    .end local v7           #llItem:Landroid/widget/LinearLayout;
    .end local v8           #llText:Landroid/widget/LinearLayout;
    .end local v9           #lpCheck:Landroid/widget/LinearLayout$LayoutParams;
    .end local v10           #lpIcon:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #lpText:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowList$Following;

    move-result-object v5

    .line 250
    .local v5, following:Lcn/sharesdk/onekeyshare/FollowList$Following;
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->tvName:Landroid/widget/TextView;

    iget-object v13, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->screeName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->tvSign:Landroid/widget/TextView;

    iget-object v13, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->description:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->ivCheck:Landroid/widget/ImageView;

    iget-boolean v12, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->checked:Z

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->bmChd:Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->isFling()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 254
    iget-object v12, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->icon:Ljava/lang/String;

    invoke-static {v12}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 255
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v12

    if-nez v12, :cond_3

    .line 256
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->aivIcon:Lm/framework/ui/widget/asyncview/AsyncImageView;

    invoke-virtual {v12, v1}, Lm/framework/ui/widget/asyncview/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    .line 265
    invoke-direct/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->next()V

    .line 267
    :cond_0
    return-object p2

    .line 246
    .end local v5           #following:Lcn/sharesdk/onekeyshare/FollowList$Following;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #item:Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;
    check-cast v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;

    .restart local v6       #item:Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;
    goto :goto_0

    .line 252
    .restart local v5       #following:Lcn/sharesdk/onekeyshare/FollowList$Following;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->bmUnch:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 258
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->aivIcon:Lm/framework/ui/widget/asyncview/AsyncImageView;

    const/4 v13, 0x0

    const v14, 0x106000d

    invoke-virtual {v12, v13, v14}, Lm/framework/ui/widget/asyncview/AsyncImageView;->execute(Ljava/lang/String;I)V

    goto :goto_2

    .line 261
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v12, v6, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;->aivIcon:Lm/framework/ui/widget/asyncview/AsyncImageView;

    iget-object v13, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->icon:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lm/framework/ui/widget/asyncview/AsyncImageView;->execute(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 418
    iget v1, p1, Landroid/os/Message;->what:I

    if-gez v1, :cond_0

    .line 419
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 429
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 421
    :cond_0
    iget v1, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->curPage:I

    if-gtz v1, :cond_1

    .line 422
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->follows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 425
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 426
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/FollowList$Following;>;"
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->follows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 427
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 1
    .parameter "plat"
    .parameter "action"

    .prologue
    .line 299
    const/4 v0, -0x1

    invoke-static {v0, p0}, Lcn/sharesdk/framework/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    .line 300
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 3
    .parameter "plat"
    .parameter "action"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p3, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p3}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->parseList(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    .line 304
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/FollowList$Following;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 305
    iget v2, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->curPage:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->curPage:I

    .line 306
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 307
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 308
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 309
    invoke-static {v1, p0}, Lcn/sharesdk/framework/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 311
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 0
    .parameter "plat"
    .parameter "action"
    .parameter "t"

    .prologue
    .line 314
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 315
    return-void
.end method

.method public onPullDown(I)V
    .locals 1
    .parameter "percent"

    .prologue
    .line 287
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->llHeader:Lcn/sharesdk/onekeyshare/FollowList$PRTHeader;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/FollowList$PRTHeader;->onPullDown(I)V

    .line 288
    return-void
.end method

.method public onRequest()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->llHeader:Lcn/sharesdk/onekeyshare/FollowList$PRTHeader;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/FollowList$PRTHeader;->onRequest()V

    .line 292
    const/4 v0, -0x1

    iput v0, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->curPage:I

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->hasNext:Z

    .line 294
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 295
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->next()V

    .line 296
    return-void
.end method

.method public onReversed()V
    .locals 1

    .prologue
    .line 433
    invoke-super {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->onReversed()V

    .line 434
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->llHeader:Lcn/sharesdk/onekeyshare/FollowList$PRTHeader;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/FollowList$PRTHeader;->reverse()V

    .line 435
    return-void
.end method

.method public setPlatform(Lcn/sharesdk/framework/Platform;)V
    .locals 0
    .parameter "platform"

    .prologue
    .line 188
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->platform:Lcn/sharesdk/framework/Platform;

    .line 189
    invoke-virtual {p1, p0}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 190
    return-void
.end method
