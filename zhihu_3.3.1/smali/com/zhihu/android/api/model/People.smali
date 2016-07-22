.class public Lcom/zhihu/android/api/model/People;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "People.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/api/model/People;",
            ">;"
        }
    .end annotation
.end field

.field public static final GENDER_FEMALE:I = 0x0

.field public static final GENDER_MALE:I = 0x1


# instance fields
.field public answerCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "answer_count"
    .end annotation
.end field

.field public articleCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "articles_count"
    .end annotation
.end field

.field public askAboutCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "ask_about_count"
    .end annotation
.end field

.field public avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "avatar_url"
    .end annotation
.end field

.field public business:Lcom/zhihu/android/api/model/Topic;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "business"
    .end annotation
.end field

.field public columnsCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "columns_count"
    .end annotation
.end field

.field public dailyRecommendPermission:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "has_daily_recommend_permission"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "description"
    .end annotation
.end field

.field public draftCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "draft_count"
    .end annotation
.end field

.field public educations:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "educations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Education;",
            ">;"
        }
    .end annotation
.end field

.field public email:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "email"
    .end annotation
.end field

.field public employments:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "employments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Employment;",
            ">;"
        }
    .end annotation
.end field

.field public favoriteCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "favorite_count"
    .end annotation
.end field

.field public favoritedCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "favorited_count"
    .end annotation
.end field

.field public followerCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "follower_count"
    .end annotation
.end field

.field public following:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_following"
    .end annotation
.end field

.field public followingCollectionCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "following_collection_count"
    .end annotation
.end field

.field public followingColumnCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "following_columns_count"
    .end annotation
.end field

.field public followingCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "following_count"
    .end annotation
.end field

.field public followingQuestionCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "following_question_count"
    .end annotation
.end field

.field public followingTopicCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "following_topic_count"
    .end annotation
.end field

.field public friendlyScore:F
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "friendly_score"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public gender:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "gender"
    .end annotation
.end field

.field public headline:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "headline"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public isActive:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_active"
    .end annotation
.end field

.field public isBindSina:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_bind_sina"
    .end annotation
.end field

.field public isInvited:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_invited"
    .end annotation
.end field

.field public isLocked:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_locked"
    .end annotation
.end field

.field public locations:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "locations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Topic;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "name"
    .end annotation
.end field

.field public qqWeiboName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "qq_weibo_name"
    .end annotation
.end field

.field public qqWeiboUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "qq_weibo_url"
    .end annotation
.end field

.field public questionCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "question_count"
    .end annotation
.end field

.field public roundtableAnsweredNum:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "answered_num"
    .end annotation
.end field

.field public sharedCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "shared_count"
    .end annotation
.end field

.field public sinaWeiboName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "sina_weibo_name"
    .end annotation
.end field

.field public sinaWeiboUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "sina_weibo_url"
    .end annotation
.end field

.field public thankedCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "thanked_count"
    .end annotation
.end field

.field public uid:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "uid"
    .end annotation
.end field

.field public voteupCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "voteup_count"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 398
    new-instance v0, Lcom/zhihu/android/api/model/People$1;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/People$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/api/model/People;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 287
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 357
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/People;->uid:Ljava/lang/String;

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/People;->name:Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/People;->email:Ljava/lang/String;

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/api/model/People;->gender:I

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/People;->isActive:Z

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/People;->description:Ljava/lang/String;

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/People;->headline:Ljava/lang/String;

    .line 366
    const-class v0, Lcom/zhihu/android/api/model/Topic;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Topic;

    iput-object v0, p0, Lcom/zhihu/android/api/model/People;->business:Lcom/zhihu/android/api/model/Topic;

    .line 367
    sget-object v0, Lcom/zhihu/android/api/model/Education;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/People;->educations:Ljava/util/List;

    .line 368
    sget-object v0, Lcom/zhihu/android/api/model/Employment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/People;->employments:Ljava/util/List;

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->sharedCount:J

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->askAboutCount:J

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->favoriteCount:J

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->voteupCount:J

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->favoritedCount:J

    .line 374
    sget-object v0, Lcom/zhihu/android/api/model/Topic;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/People;->locations:Ljava/util/List;

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->followerCount:J

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->draftCount:J

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->followingCollectionCount:J

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->followingTopicCount:J

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->followingColumnCount:J

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->columnsCount:J

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/People;->sinaWeiboUrl:Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/People;->sinaWeiboName:Ljava/lang/String;

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/People;->qqWeiboUrl:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/People;->qqWeiboName:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->answerCount:J

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->questionCount:J

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/api/model/People;->avatarUrl:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->followingQuestionCount:J

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->thankedCount:J

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->followingCount:J

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/People;->following:Z

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/People;->dailyRecommendPermission:Z

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/api/model/People;->roundtableAnsweredNum:J

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/zhihu/android/api/model/People;->friendlyScore:F

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/zhihu/android/api/model/People;->isBindSina:Z

    .line 396
    return-void

    :cond_0
    move v0, v2

    .line 363
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 391
    goto :goto_1

    :cond_2
    move v0, v2

    .line 392
    goto :goto_2

    :cond_3
    move v1, v2

    .line 395
    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 296
    if-nez p1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    instance-of v1, p1, Lcom/zhihu/android/api/model/People;

    if-eqz v1, :cond_0

    .line 302
    check-cast p1, Lcom/zhihu/android/api/model/People;

    .line 303
    iget-object v1, p1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    iget-object v0, p1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isAnonymous()Z
    .locals 2

    .prologue
    .line 291
    const-string v0, "0"

    iget-object v1, p0, Lcom/zhihu/android/api/model/People;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/zhihu/android/api/model/People;->uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/zhihu/android/api/model/People;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/zhihu/android/api/model/People;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget v0, p0, Lcom/zhihu/android/api/model/People;->gender:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/People;->isActive:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 323
    iget-object v0, p0, Lcom/zhihu/android/api/model/People;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/zhihu/android/api/model/People;->headline:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/zhihu/android/api/model/People;->business:Lcom/zhihu/android/api/model/Topic;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 326
    iget-object v0, p0, Lcom/zhihu/android/api/model/People;->educations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 327
    iget-object v0, p0, Lcom/zhihu/android/api/model/People;->employments:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 328
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->sharedCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 329
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->askAboutCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 330
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->favoriteCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 331
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->voteupCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 332
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->favoritedCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 333
    iget-object v0, p0, Lcom/zhihu/android/api/model/People;->locations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 334
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->followerCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 335
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->draftCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 336
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->followingCollectionCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 337
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->followingTopicCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 338
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->followingColumnCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 339
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->columnsCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 340
    iget-object v0, p0, Lcom/zhihu/android/api/model/People;->sinaWeiboUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/zhihu/android/api/model/People;->sinaWeiboName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/zhihu/android/api/model/People;->qqWeiboUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/zhihu/android/api/model/People;->qqWeiboName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->answerCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 345
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->questionCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 346
    iget-object v0, p0, Lcom/zhihu/android/api/model/People;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->followingQuestionCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 348
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->thankedCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 349
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->followingCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 350
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/People;->following:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 351
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/People;->dailyRecommendPermission:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 352
    iget-wide v4, p0, Lcom/zhihu/android/api/model/People;->roundtableAnsweredNum:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 353
    iget v0, p0, Lcom/zhihu/android/api/model/People;->friendlyScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 354
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/People;->isBindSina:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 355
    return-void

    :cond_0
    move v0, v2

    .line 322
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 350
    goto :goto_1

    :cond_2
    move v0, v2

    .line 351
    goto :goto_2

    :cond_3
    move v1, v2

    .line 354
    goto :goto_3
.end method
