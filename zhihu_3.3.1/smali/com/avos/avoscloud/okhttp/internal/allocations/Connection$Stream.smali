.class public Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$Stream;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stream"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$Stream;->name:Ljava/lang/String;

    .line 226
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$Stream;->name:Ljava/lang/String;

    return-object v0
.end method
