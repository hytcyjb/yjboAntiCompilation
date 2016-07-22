.class public Lcom/tendcloud/tenddata/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tendcloud/tenddata/i;


# instance fields
.field public a:I

.field public b:Lcom/tendcloud/tenddata/b;

.field public c:Lcom/tendcloud/tenddata/t;

.field public d:Lcom/tendcloud/tenddata/aw;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/al;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tendcloud/tenddata/y;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->b(I)Lcom/tendcloud/tenddata/y;

    iget v0, p0, Lcom/tendcloud/tenddata/al;->a:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(I)Lcom/tendcloud/tenddata/y;

    iget v0, p0, Lcom/tendcloud/tenddata/al;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown TMessageType"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/al;->c:Lcom/tendcloud/tenddata/t;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Lcom/tendcloud/tenddata/i;)Lcom/tendcloud/tenddata/y;

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/al;->b:Lcom/tendcloud/tenddata/b;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Lcom/tendcloud/tenddata/i;)Lcom/tendcloud/tenddata/y;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/al;->d:Lcom/tendcloud/tenddata/aw;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Lcom/tendcloud/tenddata/i;)Lcom/tendcloud/tenddata/y;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
