.class final Lct/be$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lct/be;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lct/be;


# direct methods
.method constructor <init>(Lct/be;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lct/be$1;->a:Lct/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lct/be$1;->a:Lct/be;

    invoke-virtual {v0}, Lct/be;->k()V

    .line 125
    return-void
.end method
