.class Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
.super Ljava/lang/Object;
.source "QiniuUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/QiniuUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QiniuBlockResponseData"
.end annotation


# instance fields
.field public checksum:Ljava/lang/String;

.field public crc32:J

.field public ctx:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public offset:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
