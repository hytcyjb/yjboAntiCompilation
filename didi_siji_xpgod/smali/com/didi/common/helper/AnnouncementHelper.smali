.class public Lcom/didi/common/helper/AnnouncementHelper;
.super Ljava/lang/Object;
.source "AnnouncementHelper.java"


# static fields
.field private static resourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f0202fc

    sput v0, Lcom/didi/common/helper/AnnouncementHelper;->resourceId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Lcom/didi/frame/business/Business;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lcom/didi/common/helper/AnnouncementHelper;->setTitleBar(Landroid/view/View;Lcom/didi/frame/business/Business;I)V

    return-void
.end method

.method public static checkLocalImgState()V
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/common/helper/AnnouncementHelper;->validateImages(Lcom/didi/frame/business/Business;)Z

    .line 432
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/common/helper/AnnouncementHelper;->validateImages(Lcom/didi/frame/business/Business;)Z

    .line 433
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/common/helper/AnnouncementHelper;->validateImages(Lcom/didi/frame/business/Business;)Z

    .line 434
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/common/helper/AnnouncementHelper;->validateImages(Lcom/didi/frame/business/Business;)Z

    .line 435
    return-void
.end method

.method public static getWebUrlByBusiness(Lcom/didi/frame/business/Business;)Ljava/lang/String;
    .locals 2
    .parameter "business"

    .prologue
    .line 552
    const-string v0, ""

    .line 553
    .local v0, url:Ljava/lang/String;
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne p0, v1, :cond_1

    .line 554
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getTaxiAnnouncementWebUrl()Ljava/lang/String;

    move-result-object v0

    .line 562
    .end local v0           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 555
    .restart local v0       #url:Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p0, v1, :cond_2

    .line 556
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCarAnnouncementWebUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 557
    :cond_2
    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne p0, v1, :cond_3

    .line 558
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getFlierAnnouncementWebUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 559
    :cond_3
    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne p0, v1, :cond_0

    .line 560
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getDDriveAnnouncementWebUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static inCarAnnouncementInitialVersion()Z
    .locals 2

    .prologue
    .line 444
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getCarAnnouncementVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2353299186"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCarAnnouncementOverDue()Z
    .locals 11

    .prologue
    .line 498
    const/4 v4, 0x0

    .line 499
    .local v4, isOverdue:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v0, v7, v9

    .line 500
    .local v0, curTime:J
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getCarAnnouncementStartTime()J

    move-result-wide v5

    .line 501
    .local v5, startTime:J
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getCarAnnouncementEndTime()J

    move-result-wide v2

    .line 502
    .local v2, endTime:J
    cmp-long v7, v0, v5

    if-ltz v7, :cond_0

    cmp-long v7, v0, v2

    if-gtz v7, :cond_0

    .line 503
    const/4 v4, 0x0

    .line 507
    :goto_0
    return v4

    .line 505
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isDDriveAnnouncementOverDue()Z
    .locals 11

    .prologue
    .line 534
    const/4 v4, 0x0

    .line 535
    .local v4, isOverdue:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v0, v7, v9

    .line 536
    .local v0, curTime:J
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getDDriveAnnouncementStartTime()J

    move-result-wide v5

    .line 537
    .local v5, startTime:J
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getDDriveAnnouncementEndTime()J

    move-result-wide v2

    .line 538
    .local v2, endTime:J
    cmp-long v7, v0, v5

    if-ltz v7, :cond_0

    cmp-long v7, v0, v2

    if-gtz v7, :cond_0

    .line 539
    const/4 v4, 0x0

    .line 543
    :goto_0
    return v4

    .line 541
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isDDriveAnnuncementInitialVersion()Z
    .locals 2

    .prologue
    .line 471
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getDDriveAnnouncementVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2353299186"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFlierAnnouncementOverDue()Z
    .locals 11

    .prologue
    .line 516
    const/4 v4, 0x0

    .line 517
    .local v4, isOverdue:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v0, v7, v9

    .line 518
    .local v0, curTime:J
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getFlierAnnouncementStartTime()J

    move-result-wide v5

    .line 519
    .local v5, startTime:J
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getFlierAnnouncementEndTime()J

    move-result-wide v2

    .line 520
    .local v2, endTime:J
    cmp-long v7, v0, v5

    if-ltz v7, :cond_0

    cmp-long v7, v0, v2

    if-gtz v7, :cond_0

    .line 521
    const/4 v4, 0x0

    .line 525
    :goto_0
    return v4

    .line 523
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isFlierAnnuncementInitialVersion()Z
    .locals 2

    .prologue
    .line 462
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getFlierAnnouncementVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2353299186"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLoadFromNet(Lcom/didi/frame/business/Business;)Z
    .locals 3
    .parameter "business"

    .prologue
    .line 292
    const/4 v1, 0x0

    .line 293
    .local v1, isLoadFromNet:Z
    invoke-static {p0}, Lcom/didi/common/helper/AnnouncementHelper;->loadImgFromLocal(Lcom/didi/frame/business/Business;)Ljava/util/ArrayList;

    move-result-object v0

    .line 294
    .local v0, imgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 295
    invoke-static {p0}, Lcom/didi/common/helper/AnnouncementHelper;->validateLocal(Lcom/didi/frame/business/Business;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->setLocalData(Ljava/util/ArrayList;)V

    .line 297
    const/4 v1, 0x0

    .line 304
    :goto_0
    return v1

    .line 299
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 302
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isTaxiAnnouncementOverDue()Z
    .locals 11

    .prologue
    .line 480
    const/4 v4, 0x0

    .line 481
    .local v4, isOverdue:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v0, v7, v9

    .line 482
    .local v0, curTime:J
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getTaxiAnnouncementStartTime()J

    move-result-wide v5

    .line 483
    .local v5, startTime:J
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getTaxiAnnouncementEndTime()J

    move-result-wide v2

    .line 484
    .local v2, endTime:J
    cmp-long v7, v0, v5

    if-ltz v7, :cond_0

    cmp-long v7, v0, v2

    if-gtz v7, :cond_0

    .line 485
    const/4 v4, 0x0

    .line 489
    :goto_0
    return v4

    .line 487
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isTaxiAnnuncementInitialVersion()Z
    .locals 2

    .prologue
    .line 453
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getTaxiAnnouncementVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2353299186"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static loadImgFromLocal(Lcom/didi/frame/business/Business;)Ljava/util/ArrayList;
    .locals 8
    .parameter "business"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/business/Business;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v5, pics:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x0

    .line 120
    .local v2, files:[Ljava/io/File;
    sget-object v6, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne p0, v6, :cond_1

    .line 121
    sget-object v6, Lcom/didi/common/util/Constant;->ANNOUNCEMENT_TAXI_IMG:Ljava/lang/String;

    const-string v7, ".jpg"

    invoke-static {v6, v7}, Lcom/didi/common/util/FileUtil;->getFiles4Filter(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 129
    :goto_0
    if-eqz v2, :cond_0

    .line 130
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 132
    :cond_0
    if-eqz v2, :cond_4

    array-length v6, v2

    if-lez v6, :cond_4

    .line 133
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    .line 134
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/didi/common/util/ImageUtil;->createBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    sget-object v6, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p0, v6, :cond_2

    .line 123
    sget-object v6, Lcom/didi/common/util/Constant;->ANNOUNCEMENT_CAR_IMG:Ljava/lang/String;

    const-string v7, ".jpg"

    invoke-static {v6, v7}, Lcom/didi/common/util/FileUtil;->getFiles4Filter(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 124
    :cond_2
    sget-object v6, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne p0, v6, :cond_3

    .line 125
    sget-object v6, Lcom/didi/common/util/Constant;->ANNOUNCEMENT_DDRIVE_IMG:Ljava/lang/String;

    const-string v7, ".jpg"

    invoke-static {v6, v7}, Lcom/didi/common/util/FileUtil;->getFiles4Filter(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 127
    :cond_3
    sget-object v6, Lcom/didi/common/util/Constant;->ANNOUNCEMENT_FLIER_IMG:Ljava/lang/String;

    const-string v7, ".jpg"

    invoke-static {v6, v7}, Lcom/didi/common/util/FileUtil;->getFiles4Filter(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 137
    :cond_4
    return-object v5
.end method

.method private static resetCorrespondingAnnouncement(Lcom/didi/frame/business/Business;)V
    .locals 3
    .parameter "business"

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const-string v1, "3999944283"

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->saveAnnouncementVersion(Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne p0, v0, :cond_0

    .line 184
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const-string v1, "2353299186"

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->saveTaxiAnnouncementVersion(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setTaxiAutoPop(I)V

    .line 186
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->saveTaxiAnnouncementCount(I)V

    .line 200
    :goto_0
    return-void

    .line 187
    :cond_0
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p0, v0, :cond_1

    .line 188
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const-string v1, "2353299186"

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->saveCarAnnouncementVersion(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setCarAutoPop(I)V

    .line 190
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->saveCarAnnouncementCount(I)V

    goto :goto_0

    .line 191
    :cond_1
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne p0, v0, :cond_2

    .line 192
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const-string v1, "2353299186"

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->saveDDriveAnnouncementVersion(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setDDriveAutoPop(I)V

    .line 194
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->saveDDriveAnnouncementCount(I)V

    goto :goto_0

    .line 196
    :cond_2
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const-string v1, "2353299186"

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->saveFlierAnnouncementVersion(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setFlierAutoPop(I)V

    .line 198
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->saveFlierAnnouncementCount(I)V

    goto :goto_0
.end method

.method public static saveAnnuncement(Lcom/didi/car/model/CarGuideList;)V
    .locals 7
    .parameter "list"

    .prologue
    const/4 v5, 0x0

    .line 313
    if-eqz p0, :cond_11

    .line 314
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->saveAnnouncementVersion(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->hasUpdate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/didi/common/config/Preferences;->setTaxiHasAutoPopAnnouncement(Z)V

    .line 317
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/didi/common/config/Preferences;->setCarHasAutoPopAnnouncement(Z)V

    .line 318
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/didi/common/config/Preferences;->setFlierHasAutoPopAnnouncement(Z)V

    .line 319
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/didi/common/config/Preferences;->setDDriveHasAutoPopAnnouncement(Z)V

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getTaxiGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 323
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getTaxiGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    iget v4, v4, Lcom/didi/car/model/CarGuide;->type:I

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->setTaxiAutoPop(I)V

    .line 324
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getTaxiGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->saveTaxiAnnouncementCount(I)V

    .line 325
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getTaxiGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    iget-wide v4, v4, Lcom/didi/car/model/CarGuide;->startTime:J

    invoke-virtual {v3, v4, v5}, Lcom/didi/common/config/Preferences;->saveTaxiAnnouncementStartTime(J)V

    .line 326
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getTaxiGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    iget-wide v4, v4, Lcom/didi/car/model/CarGuide;->endTime:J

    invoke-virtual {v3, v4, v5}, Lcom/didi/common/config/Preferences;->saveTaxiAnnouncementEndTime(J)V

    .line 328
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 329
    .local v1, webUrl:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getTaxiGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 330
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getTaxiGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v3

    iget-object v2, v3, Lcom/didi/car/model/CarGuide;->webUrls:Ljava/util/ArrayList;

    .line 332
    .local v2, webUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    .line 333
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 334
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    if-nez v0, :cond_2

    .line 335
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 342
    .end local v0           #i:I
    .end local v2           #webUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->saveTaxiAnnouncementWebUrl(Ljava/lang/String;)V

    .line 345
    .end local v1           #webUrl:Ljava/lang/StringBuffer;
    :cond_4
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getCarGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 346
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getCarGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    iget v4, v4, Lcom/didi/car/model/CarGuide;->type:I

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->setCarAutoPop(I)V

    .line 347
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getCarGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->saveCarAnnouncementCount(I)V

    .line 348
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getCarGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    iget-wide v4, v4, Lcom/didi/car/model/CarGuide;->startTime:J

    invoke-virtual {v3, v4, v5}, Lcom/didi/common/config/Preferences;->saveCarAnnouncementStartTime(J)V

    .line 349
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getCarGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    iget-wide v4, v4, Lcom/didi/car/model/CarGuide;->endTime:J

    invoke-virtual {v3, v4, v5}, Lcom/didi/common/config/Preferences;->saveCarAnnouncementEndTime(J)V

    .line 351
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 352
    .restart local v1       #webUrl:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getCarGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 353
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getCarGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v3

    iget-object v2, v3, Lcom/didi/car/model/CarGuide;->webUrls:Ljava/util/ArrayList;

    .line 355
    .restart local v2       #webUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_7

    .line 356
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 357
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_5

    if-nez v0, :cond_6

    .line 358
    :cond_5
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 360
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 365
    .end local v0           #i:I
    .end local v2           #webUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->saveCarAnnouncementWebUrl(Ljava/lang/String;)V

    .line 368
    .end local v1           #webUrl:Ljava/lang/StringBuffer;
    :cond_8
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getDdriveGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 369
    const-string v3, "morning"

    const-string v4, "list.getDdriveGuide()  is called"

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getDdriveGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    iget v4, v4, Lcom/didi/car/model/CarGuide;->type:I

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->setDDriveAutoPop(I)V

    .line 371
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getDdriveGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->saveDDriveAnnouncementCount(I)V

    .line 372
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getDdriveGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    iget-wide v4, v4, Lcom/didi/car/model/CarGuide;->startTime:J

    invoke-virtual {v3, v4, v5}, Lcom/didi/common/config/Preferences;->saveDDriveAnnouncementStartTime(J)V

    .line 373
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getDdriveGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    iget-wide v4, v4, Lcom/didi/car/model/CarGuide;->endTime:J

    invoke-virtual {v3, v4, v5}, Lcom/didi/common/config/Preferences;->saveDDriveAnnouncementEndTime(J)V

    .line 375
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 376
    .restart local v1       #webUrl:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getDdriveGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 377
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getDdriveGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v3

    iget-object v2, v3, Lcom/didi/car/model/CarGuide;->webUrls:Ljava/util/ArrayList;

    .line 379
    .restart local v2       #webUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_b

    .line 380
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 381
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_9

    if-nez v0, :cond_a

    .line 382
    :cond_9
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 384
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 389
    .end local v0           #i:I
    .end local v2           #webUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->saveDDriveAnnouncementWebUrl(Ljava/lang/String;)V

    .line 392
    .end local v1           #webUrl:Ljava/lang/StringBuffer;
    :cond_c
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getFlierGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 393
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getFlierGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    iget v4, v4, Lcom/didi/car/model/CarGuide;->type:I

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->setFlierAutoPop(I)V

    .line 394
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getFlierGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->saveFlierAnnouncementCount(I)V

    .line 395
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getFlierGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    iget-wide v4, v4, Lcom/didi/car/model/CarGuide;->startTime:J

    invoke-virtual {v3, v4, v5}, Lcom/didi/common/config/Preferences;->saveFlierAnnouncementStartTime(J)V

    .line 396
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getFlierGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    iget-wide v4, v4, Lcom/didi/car/model/CarGuide;->endTime:J

    invoke-virtual {v3, v4, v5}, Lcom/didi/common/config/Preferences;->saveFlierAnnouncementEndTime(J)V

    .line 398
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 399
    .restart local v1       #webUrl:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getFlierGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 400
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getFlierGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v3

    iget-object v2, v3, Lcom/didi/car/model/CarGuide;->webUrls:Ljava/util/ArrayList;

    .line 402
    .restart local v2       #webUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_f

    .line 403
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    .line 404
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_d

    if-nez v0, :cond_e

    .line 405
    :cond_d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 407
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 412
    .end local v0           #i:I
    .end local v2           #webUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->saveFlierAnnouncementWebUrl(Ljava/lang/String;)V

    .line 423
    .end local v1           #webUrl:Ljava/lang/StringBuffer;
    :cond_10
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getTaxiGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getCarGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getFlierGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v5

    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getDdriveGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/didi/common/helper/PopupHelper;->setData(Lcom/didi/car/model/CarGuide;Lcom/didi/car/model/CarGuide;Lcom/didi/car/model/CarGuide;Lcom/didi/car/model/CarGuide;)V

    .line 424
    invoke-static {p0}, Lcom/didi/common/helper/AnnouncementHelper;->saveAnnuncementToLocal(Lcom/didi/car/model/CarGuideList;)V

    .line 425
    :goto_8
    return-void

    .line 416
    :cond_11
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/didi/common/config/Preferences;->setTaxiAutoPop(I)V

    .line 417
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/didi/common/config/Preferences;->setCarAutoPop(I)V

    .line 418
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/didi/common/config/Preferences;->setFlierAutoPop(I)V

    .line 419
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/didi/common/config/Preferences;->setDDriveAutoPop(I)V

    goto :goto_8
.end method

.method public static saveAnnuncementToLocal(Lcom/didi/car/model/CarGuideList;)V
    .locals 8
    .parameter "list"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getTaxiGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v4

    .line 73
    .local v4, taxiGuide:Lcom/didi/car/model/CarGuide;
    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/didi/car/model/CarGuide;->picId:Ljava/lang/String;

    sget-object v6, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v4, v5, v6}, Lcom/didi/car/model/CarGuide;->hasUpdate(Ljava/lang/String;Lcom/didi/frame/business/Business;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/didi/car/model/CarGuide;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/didi/common/util/Constant;->ANNOUNCEMENT_TAXI_IMG:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/didi/common/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 75
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    iget-object v6, v4, Lcom/didi/car/model/CarGuide;->picId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/didi/common/config/Preferences;->saveTaxiAnnouncementVersion(Ljava/lang/String;)V

    .line 76
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, v4, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 77
    iget-object v5, v4, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "taxiguide_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v5, v6, v7}, Lcom/didi/common/util/ImageUtil;->save(Ljava/lang/String;Ljava/lang/String;Lcom/didi/frame/business/Business;)V

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v3           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getCarGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v0

    .line 82
    .local v0, carGuide:Lcom/didi/car/model/CarGuide;
    if-eqz v0, :cond_1

    iget-object v5, v0, Lcom/didi/car/model/CarGuide;->picId:Ljava/lang/String;

    sget-object v6, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v0, v5, v6}, Lcom/didi/car/model/CarGuide;->hasUpdate(Ljava/lang/String;Lcom/didi/frame/business/Business;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/didi/car/model/CarGuide;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/didi/common/util/Constant;->ANNOUNCEMENT_CAR_IMG:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/didi/common/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 84
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    iget-object v6, v0, Lcom/didi/car/model/CarGuide;->picId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/didi/common/config/Preferences;->saveCarAnnouncementVersion(Ljava/lang/String;)V

    .line 85
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    iget-object v5, v0, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 86
    iget-object v5, v0, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "carguide_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v5, v6, v7}, Lcom/didi/common/util/ImageUtil;->save(Ljava/lang/String;Ljava/lang/String;Lcom/didi/frame/business/Business;)V

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    .end local v3           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getFlierGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v2

    .line 91
    .local v2, flierGuide:Lcom/didi/car/model/CarGuide;
    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/didi/car/model/CarGuide;->picId:Ljava/lang/String;

    sget-object v6, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v2, v5, v6}, Lcom/didi/car/model/CarGuide;->hasUpdate(Ljava/lang/String;Lcom/didi/frame/business/Business;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/didi/car/model/CarGuide;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/didi/common/util/Constant;->ANNOUNCEMENT_FLIER_IMG:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/didi/common/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 93
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    iget-object v6, v2, Lcom/didi/car/model/CarGuide;->picId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/didi/common/config/Preferences;->saveFlierAnnouncementVersion(Ljava/lang/String;)V

    .line 94
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    iget-object v5, v2, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 95
    iget-object v5, v2, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flierguide_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v5, v6, v7}, Lcom/didi/common/util/ImageUtil;->save(Ljava/lang/String;Ljava/lang/String;Lcom/didi/frame/business/Business;)V

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 99
    .end local v3           #i:I
    :cond_2
    invoke-virtual {p0}, Lcom/didi/car/model/CarGuideList;->getDdriveGuide()Lcom/didi/car/model/CarGuide;

    move-result-object v1

    .line 100
    .local v1, ddriveGuide:Lcom/didi/car/model/CarGuide;
    if-eqz v1, :cond_3

    iget-object v5, v1, Lcom/didi/car/model/CarGuide;->picId:Ljava/lang/String;

    sget-object v6, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-virtual {v1, v5, v6}, Lcom/didi/car/model/CarGuide;->hasUpdate(Ljava/lang/String;Lcom/didi/frame/business/Business;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/didi/car/model/CarGuide;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/didi/common/util/Constant;->ANNOUNCEMENT_DDRIVE_IMG:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/didi/common/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 102
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    iget-object v6, v1, Lcom/didi/car/model/CarGuide;->picId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/didi/common/config/Preferences;->saveDDriveAnnouncementVersion(Ljava/lang/String;)V

    .line 103
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    iget-object v5, v1, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 104
    iget-object v5, v1, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ddriveguide_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v5, v6, v7}, Lcom/didi/common/util/ImageUtil;->save(Ljava/lang/String;Ljava/lang/String;Lcom/didi/frame/business/Business;)V

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 108
    .end local v3           #i:I
    :cond_3
    return-void
.end method

.method public static setAutoPopState(Landroid/view/View;Lcom/didi/frame/business/Business;)V
    .locals 4
    .parameter "contentView"
    .parameter "business"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne p1, v0, :cond_1

    .line 210
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getTaxiAutoPop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getTaxiHasAutoPopAnnouncement()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/common/helper/PopupHelper;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/didi/common/helper/PopupHelper;->showPopupWindow(Landroid/content/Context;Landroid/view/View;Lcom/didi/frame/business/Business;Z)V

    .line 214
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/didi/common/config/Preferences;->setTaxiHasAutoPopAnnouncement(Z)V

    .line 217
    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getTaxiHasAutoPopAnnouncement()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/didi/common/helper/AnnouncementHelper;->setTitleTip(Landroid/view/View;Lcom/didi/frame/business/Business;Z)V

    .line 247
    :goto_0
    return-void

    .line 218
    :cond_1
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p1, v0, :cond_3

    .line 219
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getCarAutoPop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getCarHasAutoPopAnnouncement()Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/common/helper/PopupHelper;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/didi/common/helper/PopupHelper;->showPopupWindow(Landroid/content/Context;Landroid/view/View;Lcom/didi/frame/business/Business;Z)V

    .line 223
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/didi/common/config/Preferences;->setCarHasAutoPopAnnouncement(Z)V

    .line 226
    :cond_2
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getCarHasAutoPopAnnouncement()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/didi/common/helper/AnnouncementHelper;->setTitleTip(Landroid/view/View;Lcom/didi/frame/business/Business;Z)V

    goto :goto_0

    .line 227
    :cond_3
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne p1, v0, :cond_5

    .line 228
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getDDriveAutoPop()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getDDriveHasAutoPopAnnouncement()Z

    move-result v0

    if-nez v0, :cond_4

    .line 230
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/common/helper/PopupHelper;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/didi/common/helper/PopupHelper;->showPopupWindow(Landroid/content/Context;Landroid/view/View;Lcom/didi/frame/business/Business;Z)V

    .line 232
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/didi/common/config/Preferences;->setDDriveHasAutoPopAnnouncement(Z)V

    .line 235
    :cond_4
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getDDriveHasAutoPopAnnouncement()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/didi/common/helper/AnnouncementHelper;->setTitleTip(Landroid/view/View;Lcom/didi/frame/business/Business;Z)V

    goto :goto_0

    .line 237
    :cond_5
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getFlierAutoPop()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getFlierHasAutoPopAnnouncement()Z

    move-result v0

    if-nez v0, :cond_6

    .line 239
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/common/helper/PopupHelper;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/didi/common/helper/PopupHelper;->showPopupWindow(Landroid/content/Context;Landroid/view/View;Lcom/didi/frame/business/Business;Z)V

    .line 241
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/didi/common/config/Preferences;->setFlierHasAutoPopAnnouncement(Z)V

    .line 244
    :cond_6
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getFlierHasAutoPopAnnouncement()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/didi/common/helper/AnnouncementHelper;->setTitleTip(Landroid/view/View;Lcom/didi/frame/business/Business;Z)V

    goto/16 :goto_0
.end method

.method private static setTitleBar(Landroid/view/View;Lcom/didi/frame/business/Business;I)V
    .locals 2
    .parameter "contentView"
    .parameter "business"
    .parameter "id"

    .prologue
    .line 265
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/common/helper/PopupHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/common/helper/PopupHelper;->initData(Lcom/didi/frame/business/Business;)V

    .line 266
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    new-instance v1, Lcom/didi/common/helper/AnnouncementHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/didi/common/helper/AnnouncementHelper$1;-><init>(Landroid/view/View;Lcom/didi/frame/business/Business;)V

    invoke-virtual {v0, p2, v1}, Lcom/didi/frame/titlebar/TitleBar;->setRightDrawable(ILandroid/view/View$OnClickListener;)V

    .line 283
    return-void
.end method

.method public static setTitleTip(Landroid/view/View;Lcom/didi/frame/business/Business;Z)V
    .locals 1
    .parameter "contentView"
    .parameter "business"
    .parameter "isAutoPop"

    .prologue
    .line 256
    if-eqz p2, :cond_0

    .line 257
    const v0, 0x7f0202fc

    sput v0, Lcom/didi/common/helper/AnnouncementHelper;->resourceId:I

    .line 261
    :goto_0
    sget v0, Lcom/didi/common/helper/AnnouncementHelper;->resourceId:I

    invoke-static {p0, p1, v0}, Lcom/didi/common/helper/AnnouncementHelper;->setTitleBar(Landroid/view/View;Lcom/didi/frame/business/Business;I)V

    .line 262
    return-void

    .line 259
    :cond_0
    const v0, 0x7f0202fd

    sput v0, Lcom/didi/common/helper/AnnouncementHelper;->resourceId:I

    goto :goto_0
.end method

.method public static validateImages(Lcom/didi/frame/business/Business;)Z
    .locals 4
    .parameter "business"

    .prologue
    const/4 v2, 0x0

    .line 149
    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne p0, v3, :cond_0

    .line 150
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getTaxiAnnouncementCount()I

    move-result v1

    .line 151
    .local v1, rightImgsCount:I
    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/common/helper/AnnouncementHelper;->loadImgFromLocal(Lcom/didi/frame/business/Business;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 164
    .local v0, currentImgsCount:I
    :goto_0
    if-nez v1, :cond_3

    .line 172
    :goto_1
    return v2

    .line 153
    .end local v0           #currentImgsCount:I
    .end local v1           #rightImgsCount:I
    :cond_0
    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p0, v3, :cond_1

    .line 154
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getCarAnnouncementCount()I

    move-result v1

    .line 155
    .restart local v1       #rightImgsCount:I
    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/common/helper/AnnouncementHelper;->loadImgFromLocal(Lcom/didi/frame/business/Business;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .restart local v0       #currentImgsCount:I
    goto :goto_0

    .line 156
    .end local v0           #currentImgsCount:I
    .end local v1           #rightImgsCount:I
    :cond_1
    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne p0, v3, :cond_2

    .line 157
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getDDriveAnnouncementCount()I

    move-result v1

    .line 158
    .restart local v1       #rightImgsCount:I
    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/common/helper/AnnouncementHelper;->loadImgFromLocal(Lcom/didi/frame/business/Business;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .restart local v0       #currentImgsCount:I
    goto :goto_0

    .line 160
    .end local v0           #currentImgsCount:I
    .end local v1           #rightImgsCount:I
    :cond_2
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getFlierAnnouncementCount()I

    move-result v1

    .line 161
    .restart local v1       #rightImgsCount:I
    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/common/helper/AnnouncementHelper;->loadImgFromLocal(Lcom/didi/frame/business/Business;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .restart local v0       #currentImgsCount:I
    goto :goto_0

    .line 168
    :cond_3
    if-eq v1, v0, :cond_4

    .line 169
    invoke-static {p0}, Lcom/didi/common/helper/AnnouncementHelper;->resetCorrespondingAnnouncement(Lcom/didi/frame/business/Business;)V

    goto :goto_1

    .line 172
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static validateLocal(Lcom/didi/frame/business/Business;)Z
    .locals 8
    .parameter "business"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 41
    sget-object v6, Lcom/didi/common/util/Constant;->ANNOUNCEMENT_TAXI_IMG:Ljava/lang/String;

    const-string v7, ".jpg"

    invoke-static {v6, v7}, Lcom/didi/common/util/FileUtil;->getFiles4Filter(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    .line 42
    .local v3, taxiFiles:[Ljava/io/File;
    sget-object v6, Lcom/didi/common/util/Constant;->ANNOUNCEMENT_CAR_IMG:Ljava/lang/String;

    const-string v7, ".jpg"

    invoke-static {v6, v7}, Lcom/didi/common/util/FileUtil;->getFiles4Filter(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 43
    .local v0, carFiles:[Ljava/io/File;
    sget-object v6, Lcom/didi/common/util/Constant;->ANNOUNCEMENT_FLIER_IMG:Ljava/lang/String;

    const-string v7, ".jpg"

    invoke-static {v6, v7}, Lcom/didi/common/util/FileUtil;->getFiles4Filter(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 44
    .local v2, flierFiles:[Ljava/io/File;
    sget-object v6, Lcom/didi/common/util/Constant;->ANNOUNCEMENT_DDRIVE_IMG:Ljava/lang/String;

    const-string v7, ".jpg"

    invoke-static {v6, v7}, Lcom/didi/common/util/FileUtil;->getFiles4Filter(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 46
    .local v1, ddriveFiles:[Ljava/io/File;
    sget-object v6, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne p0, v6, :cond_2

    .line 47
    if-eqz v3, :cond_5

    array-length v6, v3

    if-lez v6, :cond_5

    .line 48
    array-length v6, v3

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getTaxiAnnouncementCount()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    sget-object v6, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne p0, v6, :cond_3

    .line 51
    if-eqz v2, :cond_5

    array-length v6, v2

    if-lez v6, :cond_5

    .line 52
    array-length v6, v2

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getFlierAnnouncementCount()I

    move-result v7

    if-eq v6, v7, :cond_0

    move v4, v5

    goto :goto_0

    .line 54
    :cond_3
    sget-object v6, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne p0, v6, :cond_4

    .line 55
    if-eqz v1, :cond_5

    array-length v6, v1

    if-lez v6, :cond_5

    .line 56
    array-length v6, v1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getDDriveAnnouncementCount()I

    move-result v7

    if-eq v6, v7, :cond_0

    move v4, v5

    goto :goto_0

    .line 59
    :cond_4
    if-eqz v0, :cond_5

    array-length v6, v0

    if-lez v6, :cond_5

    .line 60
    array-length v6, v0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getCarAnnouncementCount()I

    move-result v7

    if-eq v6, v7, :cond_0

    move v4, v5

    goto :goto_0

    :cond_5
    move v4, v5

    .line 63
    goto :goto_0
.end method
