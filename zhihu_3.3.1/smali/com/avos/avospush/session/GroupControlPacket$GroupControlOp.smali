.class public Lcom/avos/avospush/session/GroupControlPacket$GroupControlOp;
.super Ljava/lang/Object;
.source "GroupControlPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/session/GroupControlPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupControlOp"
.end annotation


# static fields
.field public static final INVITE:Ljava/lang/String; = "invite"

.field public static final JOIN:Ljava/lang/String; = "join"

.field public static final KICK:Ljava/lang/String; = "kick"

.field public static final QUIT:Ljava/lang/String; = "leave"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
