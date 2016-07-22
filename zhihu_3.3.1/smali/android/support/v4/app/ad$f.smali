.class public Landroid/support/v4/app/ad$f;
.super Landroid/support/v4/app/ad$p;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1763
    invoke-direct {p0}, Landroid/support/v4/app/ad$p;-><init>()V

    .line 1761
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ad$f;->a:Ljava/util/ArrayList;

    .line 1764
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ad$f;
    .locals 2
    .parameter

    .prologue
    .line 1792
    iget-object v0, p0, Landroid/support/v4/app/ad$f;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/app/ad$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1793
    return-object p0
.end method
