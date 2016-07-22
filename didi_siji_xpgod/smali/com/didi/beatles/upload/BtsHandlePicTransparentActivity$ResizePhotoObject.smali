.class Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;
.super Ljava/lang/Object;
.source "BtsHandlePicTransparentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResizePhotoObject"
.end annotation


# instance fields
.field public final mPhotoPath:Ljava/lang/String;

.field public final mReqId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .parameter "reqId"
    .parameter "photoPath"

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-wide p1, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;->mReqId:J

    .line 499
    iput-object p3, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;->mPhotoPath:Ljava/lang/String;

    .line 500
    return-void
.end method
