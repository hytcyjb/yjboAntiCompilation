.class public Lcom/didi/ddrive/net/http/response/CancelReason;
.super Lcom/didi/common/model/BaseObject;
.source "CancelReason.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ACTION_INPUT:I = 0x3

.field public static final ACTION_NONE:I = 0x1

.field private static final serialVersionUID:J = -0xb9bd4c4dff4f3d3L


# instance fields
.field public reasons:[Lcom/didi/ddrive/net/http/response/Item;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method
