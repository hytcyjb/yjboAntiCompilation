.class public final Lcom/tencent/bugly/proguard/x;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tencent/bugly/proguard/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final N:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/bugly/proguard/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:J

.field public E:J

.field public F:J

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:J

.field public L:Z

.field public M:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/lang/String;

.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/o;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/o;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:J

.field public s:Ljava/lang/String;

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/tencent/bugly/proguard/x$1;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/x$1;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/x;->N:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/x;->a:J

    .line 17
    iput v3, p0, Lcom/tencent/bugly/proguard/x;->b:I

    .line 18
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->c:Ljava/lang/String;

    .line 19
    iput-boolean v3, p0, Lcom/tencent/bugly/proguard/x;->d:Z

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->e:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->f:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->g:Ljava/lang/String;

    .line 23
    iput-object v4, p0, Lcom/tencent/bugly/proguard/x;->h:Ljava/util/Map;

    .line 24
    iput-object v4, p0, Lcom/tencent/bugly/proguard/x;->i:Ljava/util/Map;

    .line 26
    iput-boolean v3, p0, Lcom/tencent/bugly/proguard/x;->j:Z

    .line 27
    iput-boolean v3, p0, Lcom/tencent/bugly/proguard/x;->k:Z

    .line 28
    iput v3, p0, Lcom/tencent/bugly/proguard/x;->l:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->m:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->p:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    .line 34
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/x;->r:J

    .line 35
    iput-object v4, p0, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    .line 36
    iput v3, p0, Lcom/tencent/bugly/proguard/x;->t:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->u:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->v:Ljava/lang/String;

    .line 39
    iput-object v4, p0, Lcom/tencent/bugly/proguard/x;->w:Ljava/lang/String;

    .line 40
    iput-object v4, p0, Lcom/tencent/bugly/proguard/x;->x:Ljava/util/Map;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->y:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->z:Ljava/lang/String;

    .line 45
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/x;->A:J

    .line 46
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/x;->B:J

    .line 47
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/x;->C:J

    .line 48
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/x;->D:J

    .line 49
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/x;->E:J

    .line 50
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/x;->F:J

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->G:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->O:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->H:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->I:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->J:Ljava/lang/String;

    .line 59
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/x;->K:J

    .line 60
    iput-boolean v3, p0, Lcom/tencent/bugly/proguard/x;->L:Z

    .line 61
    iput-object v4, p0, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->a:J

    .line 17
    iput v2, p0, Lcom/tencent/bugly/proguard/x;->b:I

    .line 18
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->c:Ljava/lang/String;

    .line 19
    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/x;->d:Z

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->e:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->f:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->g:Ljava/lang/String;

    .line 23
    iput-object v5, p0, Lcom/tencent/bugly/proguard/x;->h:Ljava/util/Map;

    .line 24
    iput-object v5, p0, Lcom/tencent/bugly/proguard/x;->i:Ljava/util/Map;

    .line 26
    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/x;->j:Z

    .line 27
    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/x;->k:Z

    .line 28
    iput v2, p0, Lcom/tencent/bugly/proguard/x;->l:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->m:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->p:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    .line 34
    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->r:J

    .line 35
    iput-object v5, p0, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    .line 36
    iput v2, p0, Lcom/tencent/bugly/proguard/x;->t:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->u:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->v:Ljava/lang/String;

    .line 39
    iput-object v5, p0, Lcom/tencent/bugly/proguard/x;->w:Ljava/lang/String;

    .line 40
    iput-object v5, p0, Lcom/tencent/bugly/proguard/x;->x:Ljava/util/Map;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->y:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->z:Ljava/lang/String;

    .line 45
    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->A:J

    .line 46
    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->B:J

    .line 47
    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->C:J

    .line 48
    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->D:J

    .line 49
    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->E:J

    .line 50
    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->F:J

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->G:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->O:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->H:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->I:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->J:Ljava/lang/String;

    .line 59
    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->K:J

    .line 60
    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/x;->L:Z

    .line 61
    iput-object v5, p0, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/x;->b:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->c:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/x;->d:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->e:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->f:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->g:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/x;->j:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/x;->k:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/x;->l:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->m:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->p:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->r:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/x;->t:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->u:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->v:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->w:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Lcom/tencent/bugly/proguard/a;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->x:Ljava/util/Map;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->y:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->z:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->A:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->B:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->C:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->D:J

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->E:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->F:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->G:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->O:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->H:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->I:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->J:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/proguard/x;->K:J

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/x;->L:Z

    .line 106
    invoke-static {p1}, Lcom/tencent/bugly/proguard/a;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    .line 108
    invoke-static {p1}, Lcom/tencent/bugly/proguard/a;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->h:Ljava/util/Map;

    .line 109
    invoke-static {p1}, Lcom/tencent/bugly/proguard/a;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/x;->i:Ljava/util/Map;

    .line 111
    return-void

    :cond_0
    move v0, v2

    .line 72
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 76
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 77
    goto/16 :goto_2

    :cond_3
    move v1, v2

    .line 105
    goto :goto_3
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 6
    .parameter "x0"

    .prologue
    const-wide/16 v4, 0x0

    .line 13
    check-cast p1, Lcom/tencent/bugly/proguard/x;

    .end local p1
    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/x;->r:J

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/x;->r:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    iget v0, p0, Lcom/tencent/bugly/proguard/x;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/x;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 126
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/x;->j:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 130
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/x;->k:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 131
    iget v0, p0, Lcom/tencent/bugly/proguard/x;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/x;->r:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget v0, p0, Lcom/tencent/bugly/proguard/x;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->x:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/a;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 144
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/x;->A:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/x;->B:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/x;->C:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/x;->D:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/x;->E:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 151
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/x;->F:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->O:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->I:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/x;->K:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 158
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/x;->L:Z

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 159
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/a;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 161
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->h:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/a;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 162
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->i:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/a;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 163
    return-void

    :cond_0
    move v0, v2

    .line 125
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 129
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 130
    goto/16 :goto_2

    :cond_3
    move v1, v2

    .line 158
    goto :goto_3
.end method
