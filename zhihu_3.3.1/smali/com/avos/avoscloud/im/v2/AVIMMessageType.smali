.class public interface abstract annotation Lcom/avos/avoscloud/im/v2/AVIMMessageType;
.super Ljava/lang/Object;
.source "AVIMMessageType.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final AUDIO_MESSAGE_TYPE:I = -0x3

.field public static final FILE_MESSAGE_TYPE:I = -0x6

.field public static final IMAGE_MESSAGE_TYPE:I = -0x2

.field public static final LOCATION_MESSAGE_TYPE:I = -0x5

.field public static final TEXT_MESSAGE_TYPE:I = -0x1

.field public static final VIDEO_MESSAGE_TYPE:I = -0x4


# virtual methods
.method public abstract type()I
.end method
