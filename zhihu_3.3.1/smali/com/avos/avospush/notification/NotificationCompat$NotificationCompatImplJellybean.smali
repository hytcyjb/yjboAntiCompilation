.class Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImplJellybean;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/notification/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplJellybean"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/avos/avospush/notification/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 18
    .parameter

    .prologue
    .line 107
    new-instance v1, Lcom/avos/avospush/notification/NotificationCompatJellybean;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNumber:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mProgressMax:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mProgress:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mProgressIndeterminate:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mUseChronometer:Z

    move-object/from16 v0, p1

    iget v0, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mPriority:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lcom/avos/avospush/notification/NotificationCompatJellybean;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V

    .line 112
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avospush/notification/NotificationCompat$Action;

    .line 113
    iget v4, v2, Lcom/avos/avospush/notification/NotificationCompat$Action;->icon:I

    iget-object v5, v2, Lcom/avos/avospush/notification/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    iget-object v2, v2, Lcom/avos/avospush/notification/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v5, v2}, Lcom/avos/avospush/notification/NotificationCompatJellybean;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 115
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    if-eqz v2, :cond_1

    .line 116
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    instance-of v2, v2, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;

    if-eqz v2, :cond_2

    .line 117
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    check-cast v2, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;

    .line 118
    iget-object v3, v2, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    iget-boolean v4, v2, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    iget-object v5, v2, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    iget-object v2, v2, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/avos/avospush/notification/NotificationCompatJellybean;->addBigTextStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 130
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/avos/avospush/notification/NotificationCompatJellybean;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1

    .line 120
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    instance-of v2, v2, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;

    if-eqz v2, :cond_3

    .line 121
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    check-cast v2, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;

    .line 122
    iget-object v3, v2, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    iget-boolean v4, v2, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;->mSummaryTextSet:Z

    iget-object v5, v2, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    iget-object v2, v2, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/avos/avospush/notification/NotificationCompatJellybean;->addInboxStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 124
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    instance-of v2, v2, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;

    if-eqz v2, :cond_1

    .line 125
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    move-object v7, v2

    check-cast v7, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;

    .line 126
    iget-object v2, v7, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    iget-boolean v3, v7, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    iget-object v4, v7, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    iget-object v5, v7, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    iget-object v6, v7, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    iget-boolean v7, v7, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    invoke-virtual/range {v1 .. v7}, Lcom/avos/avospush/notification/NotificationCompatJellybean;->addBigPictureStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method
