.class public final Lcom/sdu/didi/psnger/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdu/didi/psnger/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final MESSAGE:Ljava/lang/String; = "com.didi.extend.permission.MESSAGE"

.field public static final MIPUSH_RECEIVE:Ljava/lang/String; = "com.sdu.didi.psnger.permission.MIPUSH_RECEIVE"

.field public static final START_SERVICE:Ljava/lang/String; = "didi.permission.START_SERVICE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
