.class public final enum Lcom/xiaomi/xmpush/thrift/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/xmpush/thrift/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum B:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum C:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum D:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum E:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum F:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum G:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum H:Lcom/xiaomi/xmpush/thrift/b;

.field private static final synthetic J:[Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum a:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum b:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum c:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum d:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum e:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum f:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum g:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum h:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum i:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum j:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum k:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum l:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum m:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum n:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum o:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum p:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum q:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum r:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum s:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum t:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum u:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum v:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum w:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum x:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum y:Lcom/xiaomi/xmpush/thrift/b;

.field public static final enum z:Lcom/xiaomi/xmpush/thrift/b;


# instance fields
.field private final I:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "TCP_CONN_FAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->a:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "TCP_CONN_TIME"

    invoke-direct {v0, v1, v4, v5}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->b:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "PING_RTT"

    invoke-direct {v0, v1, v5, v6}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->c:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CHANNEL_CON_FAIL"

    invoke-direct {v0, v1, v6, v7}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->d:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CHANNEL_CON_OK"

    invoke-direct {v0, v1, v7, v8}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->e:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "ICMP_PING_FAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->f:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "ICMP_PING_OK"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->g:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CONN_SUCCESS"

    const/4 v2, 0x7

    const/16 v3, 0x4e20

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->h:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CONN_TCP_NOACCESS"

    const/16 v2, 0x8

    const/16 v3, 0x4e85

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->i:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CONN_TCP_NETUNREACH"

    const/16 v2, 0x9

    const/16 v3, 0x4e86

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->j:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CONN_TCP_CONNREFUSED"

    const/16 v2, 0xa

    const/16 v3, 0x4e87

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->k:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CONN_TCP_NOROUTETOHOST"

    const/16 v2, 0xb

    const/16 v3, 0x4e88

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->l:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CONN_TCP_TIMEOUT"

    const/16 v2, 0xc

    const/16 v3, 0x4e89

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->m:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CONN_TCP_INVALARG"

    const/16 v2, 0xd

    const/16 v3, 0x4e8a

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->n:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CONN_TCP_ERR_OTHER"

    const/16 v2, 0xe

    const/16 v3, 0x4ee7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->o:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CONN_XMPP_ERR"

    const/16 v2, 0xf

    const/16 v3, 0x4faf

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->p:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CONN_BOSH_UNKNOWNHOST"

    const/16 v2, 0x10

    const/16 v3, 0x4fb1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->q:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CONN_BOSH_ERR"

    const/16 v2, 0x11

    const/16 v3, 0x5013

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->r:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "BIND_SUCCESS"

    const/16 v2, 0x12

    const/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->s:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "BIND_TCP_READ_TIMEOUT"

    const/16 v2, 0x13

    const/16 v3, 0x7595

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->t:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "BIND_TCP_CONNRESET"

    const/16 v2, 0x14

    const/16 v3, 0x7596

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->u:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "BIND_TCP_BROKEN_PIPE"

    const/16 v2, 0x15

    const/16 v3, 0x7597

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->v:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "BIND_TCP_ERR"

    const/16 v2, 0x16

    const/16 v3, 0x75f7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->w:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "BIND_XMPP_ERR"

    const/16 v2, 0x17

    const/16 v3, 0x76bf

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->x:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "BIND_BOSH_ITEM_NOT_FOUND"

    const/16 v2, 0x18

    const/16 v3, 0x76c1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->y:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "BIND_BOSH_ERR"

    const/16 v2, 0x19

    const/16 v3, 0x7723

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->z:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "BIND_TIMEOUT"

    const/16 v2, 0x1a

    const/16 v3, 0x7725

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->A:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CHANNEL_TCP_READTIMEOUT"

    const/16 v2, 0x1b

    const v3, 0x9ca5

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->B:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CHANNEL_TCP_CONNRESET"

    const/16 v2, 0x1c

    const v3, 0x9ca6

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->C:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CHANNEL_TCP_BROKEN_PIPE"

    const/16 v2, 0x1d

    const v3, 0x9ca7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->D:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CHANNEL_TCP_ERR"

    const/16 v2, 0x1e

    const v3, 0x9d07

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->E:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CHANNEL_XMPPEXCEPTION"

    const/16 v2, 0x1f

    const v3, 0x9dcf

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->F:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CHANNEL_BOSH_ITEMNOTFIND"

    const/16 v2, 0x20

    const v3, 0x9dd1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->G:Lcom/xiaomi/xmpush/thrift/b;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/b;

    const-string v1, "CHANNEL_BOSH_EXCEPTION"

    const/16 v2, 0x21

    const v3, 0x9e33

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->H:Lcom/xiaomi/xmpush/thrift/b;

    const/16 v0, 0x22

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/b;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->a:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/xmpush/thrift/b;->b:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/xmpush/thrift/b;->c:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/b;->d:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/b;->e:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/b;->f:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->g:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->h:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->i:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->j:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->k:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->l:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->m:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->n:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->o:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->p:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->q:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->r:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->s:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->t:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->u:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->v:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->w:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->x:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->y:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->z:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->A:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->B:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->C:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->D:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->E:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->F:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->G:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->H:Lcom/xiaomi/xmpush/thrift/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/xmpush/thrift/b;->J:[Lcom/xiaomi/xmpush/thrift/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/xmpush/thrift/b;->I:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/b;
    .locals 1

    const-class v0, Lcom/xiaomi/xmpush/thrift/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/b;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/b;
    .locals 1

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->J:[Lcom/xiaomi/xmpush/thrift/b;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/xmpush/thrift/b;->I:I

    return v0
.end method
