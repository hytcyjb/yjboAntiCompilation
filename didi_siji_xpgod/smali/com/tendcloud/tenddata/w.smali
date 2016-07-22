.class public final Lcom/tendcloud/tenddata/w;
.super Ljava/lang/Object;


# instance fields
.field public final a:[I

.field public final b:[I

.field public c:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/w;->c:I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/tendcloud/tenddata/w;->a:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/tendcloud/tenddata/w;->b:[I

    return-void
.end method
