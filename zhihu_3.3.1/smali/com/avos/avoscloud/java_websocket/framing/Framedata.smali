.class public interface abstract Lcom/avos/avoscloud/java_websocket/framing/Framedata;
.super Ljava/lang/Object;
.source "Framedata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;
    }
.end annotation


# virtual methods
.method public abstract append(Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
.end method

.method public abstract getOpcode()Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;
.end method

.method public abstract getPayloadData()Ljava/nio/ByteBuffer;
.end method

.method public abstract getTransfereMasked()Z
.end method

.method public abstract isFin()Z
.end method
