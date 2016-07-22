.class public final Lcom/facebook/soloader/h$c;
.super Ljava/lang/Object;
.source "UnpackingSoSource.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/facebook/soloader/h$a;

.field public final b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/facebook/soloader/h$a;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/facebook/soloader/h$c;->a:Lcom/facebook/soloader/h$a;

    .line 103
    iput-object p2, p0, Lcom/facebook/soloader/h$c;->b:Ljava/io/InputStream;

    .line 104
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/soloader/h$c;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 109
    return-void
.end method
