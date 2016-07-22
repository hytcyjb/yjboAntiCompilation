.class public Landroid/support/v4/app/ad$c;
.super Landroid/support/v4/app/ad$p;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1701
    invoke-direct {p0}, Landroid/support/v4/app/ad$p;-><init>()V

    .line 1702
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/ad$d;)V
    .locals 0
    .parameter

    .prologue
    .line 1704
    invoke-direct {p0}, Landroid/support/v4/app/ad$p;-><init>()V

    .line 1705
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ad$c;->a(Landroid/support/v4/app/ad$d;)V

    .line 1706
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ad$c;
    .locals 1
    .parameter

    .prologue
    .line 1731
    invoke-static {p1}, Landroid/support/v4/app/ad$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ad$c;->a:Ljava/lang/CharSequence;

    .line 1732
    return-object p0
.end method
