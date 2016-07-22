.class public Lcom/didi/common/util/SMSUtil;
.super Ljava/lang/Object;
.source "SMSUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/util/SMSUtil$SmsListener;,
        Lcom/didi/common/util/SMSUtil$SmsReceiver;
    }
.end annotation


# static fields
.field public static final SMS_FAILED:I = -0x2328

.field public static final SMS_INBOX_TYPE:I = 0x1

.field public static final SMS_OUTBOX_FAILED_TYPE:I = 0x5

.field public static final SMS_OUTBOX_TYPE:I = 0x2

.field public static final SMS_SENDING:I = 0x2329

.field public static final SMS_SUCCESSED:I = 0x2328

.field private static final mConversationsUri:Landroid/net/Uri;

.field private static final mSmsUri:Landroid/net/Uri;


# instance fields
.field private isSendMsg:Z

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/didi/common/util/SMSUtil$SmsListener;

.field private mMaxDate:J

.field private mSmsCount:I

.field private mSmsReceiver:Lcom/didi/common/util/SMSUtil$SmsReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/didi/common/util/SMSUtil;->mSmsUri:Landroid/net/Uri;

    .line 34
    const-string v0, "content://mms-sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/didi/common/util/SMSUtil;->mConversationsUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/util/SMSUtil;->isSendMsg:Z

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/util/SMSUtil;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/didi/common/util/SMSUtil;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/util/SMSUtil;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/didi/common/util/SMSUtil;->isSendMsg:Z

    return v0
.end method

.method static synthetic access$102(Lcom/didi/common/util/SMSUtil;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/didi/common/util/SMSUtil;->isSendMsg:Z

    return p1
.end method

.method static synthetic access$200(Lcom/didi/common/util/SMSUtil;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/didi/common/util/SMSUtil;->checkSmsState()V

    return-void
.end method

.method private checkSmsState()V
    .locals 6

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/didi/common/util/SMSUtil;->getMaxDate()J

    move-result-wide v2

    .line 122
    .local v2, i:J
    invoke-direct {p0}, Lcom/didi/common/util/SMSUtil;->getSmsCount()I

    move-result v0

    .line 123
    .local v0, count:I
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-wide v4, p0, Lcom/didi/common/util/SMSUtil;->mMaxDate:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    iget v4, p0, Lcom/didi/common/util/SMSUtil;->mSmsCount:I

    if-le v0, v4, :cond_0

    .line 129
    :cond_2
    invoke-direct {p0}, Lcom/didi/common/util/SMSUtil;->getLatestSms()Landroid/database/Cursor;

    move-result-object v1

    .line 130
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 134
    iget-object v4, p0, Lcom/didi/common/util/SMSUtil;->mListener:Lcom/didi/common/util/SMSUtil$SmsListener;

    invoke-interface {v4, v1}, Lcom/didi/common/util/SMSUtil$SmsListener;->onSmsChanged(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private getLatestSms()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/didi/common/util/SMSUtil;->mSmsUri:Landroid/net/Uri;

    const-string v5, "_id DESC limit 1"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMaxDate()J
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 164
    const-wide/16 v7, 0x0

    .line 165
    .local v7, id:J
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/didi/common/util/SMSUtil;->mSmsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date"

    aput-object v5, v2, v4

    const-string v5, "_id DESC limit 1"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 167
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 168
    const-wide/16 v0, -0x1

    .line 175
    :goto_0
    return-wide v0

    .line 170
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 171
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 172
    const-string v0, "date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 174
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-wide v0, v7

    .line 175
    goto :goto_0
.end method

.method private getSmsCount()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 153
    const/4 v7, 0x0

    .line 154
    .local v7, i:I
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/didi/common/util/SMSUtil;->mSmsUri:Landroid/net/Uri;

    const-string v3, "address is not null"

    const-string v5, "date DESC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 155
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 157
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_0
    return v7
.end method


# virtual methods
.method public registerSmsObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 107
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/didi/common/util/SMSUtil;->mConversationsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    const-string v0, "android.permission.READ_SMS"

    invoke-static {v0}, Lcom/didi/common/util/Utils;->checkUserPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/didi/common/util/SMSUtil;->getSmsCount()I

    move-result v0

    iput v0, p0, Lcom/didi/common/util/SMSUtil;->mSmsCount:I

    .line 110
    invoke-direct {p0}, Lcom/didi/common/util/SMSUtil;->getMaxDate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/util/SMSUtil;->mMaxDate:J

    .line 112
    :cond_0
    return-void
.end method

.method public registerSmsObserver(Lcom/didi/common/util/SMSUtil$SmsListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/didi/common/util/SMSUtil;->mListener:Lcom/didi/common/util/SMSUtil$SmsListener;

    .line 116
    new-instance v0, Lcom/didi/common/util/SMSUtil$SmsReceiver;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/didi/common/util/SMSUtil$SmsReceiver;-><init>(Lcom/didi/common/util/SMSUtil;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/didi/common/util/SMSUtil;->mSmsReceiver:Lcom/didi/common/util/SMSUtil$SmsReceiver;

    .line 117
    iget-object v0, p0, Lcom/didi/common/util/SMSUtil;->mSmsReceiver:Lcom/didi/common/util/SMSUtil$SmsReceiver;

    invoke-virtual {p0, v0}, Lcom/didi/common/util/SMSUtil;->registerSmsObserver(Landroid/database/ContentObserver;)V

    .line 118
    return-void
.end method

.method public sendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 5
    .parameter "cxt"
    .parameter "phone"
    .parameter "smsContent"
    .parameter "handler"

    .prologue
    .line 41
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/didi/common/util/SMSUtil;->isSendMsg:Z

    .line 42
    iput-object p4, p0, Lcom/didi/common/util/SMSUtil;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance v2, Lcom/didi/common/util/SMSUtil$SmsReceiver;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3, v4}, Lcom/didi/common/util/SMSUtil$SmsReceiver;-><init>(Lcom/didi/common/util/SMSUtil;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/didi/common/util/SMSUtil;->mSmsReceiver:Lcom/didi/common/util/SMSUtil$SmsReceiver;

    .line 44
    iget-object v2, p0, Lcom/didi/common/util/SMSUtil;->mSmsReceiver:Lcom/didi/common/util/SMSUtil$SmsReceiver;

    invoke-virtual {p0, v2}, Lcom/didi/common/util/SMSUtil;->registerSmsObserver(Landroid/database/ContentObserver;)V

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 46
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    .local v0, it:Landroid/content/Intent;
    const-string v2, "sms_body"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    if-nez p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    new-instance v2, Lcom/didi/common/util/SMSUtil$1;

    invoke-direct {v2, p0}, Lcom/didi/common/util/SMSUtil$1;-><init>(Lcom/didi/common/util/SMSUtil;)V

    iput-object v2, p0, Lcom/didi/common/util/SMSUtil;->mListener:Lcom/didi/common/util/SMSUtil$SmsListener;

    goto :goto_0
.end method

.method public unregisterSmsObserver()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/didi/common/util/SMSUtil;->mSmsReceiver:Lcom/didi/common/util/SMSUtil$SmsReceiver;

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/util/SMSUtil;->mSmsReceiver:Lcom/didi/common/util/SMSUtil$SmsReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 145
    :cond_0
    return-void
.end method
