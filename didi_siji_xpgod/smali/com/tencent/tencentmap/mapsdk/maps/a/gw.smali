.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gw;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/ad;
.source "Header.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static s:Lcom/tencent/tencentmap/mapsdk/maps/a/gv;

.field static final synthetic t:Z


# instance fields
.field public a:J

.field public b:Lcom/tencent/tencentmap/mapsdk/maps/a/gv;

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->t:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;-><init>()V

    .line 21
    iput-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->a:J

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gv;

    .line 25
    iput-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->c:J

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->d:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->e:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->f:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->g:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->h:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->i:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->j:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->k:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->l:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->m:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->n:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->o:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->p:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->q:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->r:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 253
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->a:J

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->a:J

    .line 254
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/gv;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gv;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gv;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/gv;

    .line 258
    :cond_0
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/gv;

    invoke-virtual {p1, v0, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ad;IZ)Lcom/tencent/tencentmap/mapsdk/maps/a/ad;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gv;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gv;

    .line 259
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->c:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->c:J

    .line 260
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->d:Ljava/lang/String;

    .line 261
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->e:Ljava/lang/String;

    .line 262
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->f:Ljava/lang/String;

    .line 263
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->g:Ljava/lang/String;

    .line 264
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->h:Ljava/lang/String;

    .line 265
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->i:Ljava/lang/String;

    .line 266
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->j:Ljava/lang/String;

    .line 267
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->k:Ljava/lang/String;

    .line 268
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->l:Ljava/lang/String;

    .line 269
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->m:Ljava/lang/String;

    .line 270
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->n:Ljava/lang/String;

    .line 271
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->o:Ljava/lang/String;

    .line 272
    const/16 v0, 0xf

    invoke-virtual {p1, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->p:Ljava/lang/String;

    .line 273
    const/16 v0, 0x10

    invoke-virtual {p1, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->q:Ljava/lang/String;

    .line 274
    const/16 v0, 0x11

    invoke-virtual {p1, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->r:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ac;)V
    .locals 3
    .parameter "_os"

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->a:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(JI)V

    .line 181
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gv;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gv;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ad;I)V

    .line 185
    :cond_0
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->c:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(JI)V

    .line 186
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 202
    :cond_4
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 204
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->h:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 206
    :cond_5
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 208
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->i:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 210
    :cond_6
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->j:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 212
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->j:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 214
    :cond_7
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->k:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 216
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->k:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 218
    :cond_8
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->l:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 220
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->l:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 222
    :cond_9
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->m:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 224
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->m:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 226
    :cond_a
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->n:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 228
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->n:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 230
    :cond_b
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->o:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 232
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->o:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 234
    :cond_c
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->p:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 236
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->p:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 238
    :cond_d
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->q:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 240
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->q:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 242
    :cond_e
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->r:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 244
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->r:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 246
    :cond_f
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 4
    .parameter "_os"
    .parameter "_level"

    .prologue
    .line 280
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    invoke-direct {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 281
    .local v0, _ds:Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->a:J

    const-string v3, "lCurrTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(JLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 282
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gv;

    const-string v2, "stResult"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ad;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 283
    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->c:J

    const-string v3, "uAccIp"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(JLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 284
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->d:Ljava/lang/String;

    const-string v2, "strSessionId"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 285
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->e:Ljava/lang/String;

    const-string v2, "strLC"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 286
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->f:Ljava/lang/String;

    const-string v2, "strToken"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 287
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->g:Ljava/lang/String;

    const-string v2, "strFr"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 288
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->h:Ljava/lang/String;

    const-string v2, "strPf"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 289
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->i:Ljava/lang/String;

    const-string v2, "strImei"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 290
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->j:Ljava/lang/String;

    const-string v2, "strMobver"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 291
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->k:Ljava/lang/String;

    const-string v2, "strNettp"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 292
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->l:Ljava/lang/String;

    const-string v2, "strImsi"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 293
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->m:Ljava/lang/String;

    const-string v2, "strOsVersion"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 294
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->n:Ljava/lang/String;

    const-string v2, "strSoftVersion"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 295
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->o:Ljava/lang/String;

    const-string v2, "strOfflineVersion"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 296
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->p:Ljava/lang/String;

    const-string v2, "strChannel"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 297
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->q:Ljava/lang/String;

    const-string v2, "strMachineModel"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 298
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->r:Ljava/lang/String;

    const-string v2, "strUserNetType"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 299
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 168
    .local v0, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    .end local v0           #o:Ljava/lang/Object;
    :cond_0
    return-object v0

    .line 172
    .restart local v0       #o:Ljava/lang/Object;
    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->t:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 122
    if-nez p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 127
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;

    .line 128
    .local v0, t:Lcom/tencent/tencentmap/mapsdk/maps/a/gw;
    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->a:J

    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->a:J

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gv;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gv;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->c:J

    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->c:J

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->d:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->f:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->h:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->i:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->j:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->k:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->l:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->l:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->m:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->n:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->n:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->o:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->o:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->p:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->p:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->q:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->q:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->r:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->r:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 154
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    const/4 v0, 0x0

    return v0
.end method
