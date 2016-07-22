.class public final Lcom/avos/avoscloud/okhttp/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/CacheControl$1;,
        Lcom/avos/avoscloud/okhttp/CacheControl$Builder;
    }
.end annotation


# static fields
.field public static final FORCE_CACHE:Lcom/avos/avoscloud/okhttp/CacheControl;

.field public static final FORCE_NETWORK:Lcom/avos/avoscloud/okhttp/CacheControl;


# instance fields
.field headerValue:Ljava/lang/String;

.field private final isPrivate:Z

.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final noTransform:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->noCache()Lcom/avos/avoscloud/okhttp/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->build()Lcom/avos/avoscloud/okhttp/CacheControl;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/CacheControl;->FORCE_NETWORK:Lcom/avos/avoscloud/okhttp/CacheControl;

    .line 29
    new-instance v0, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->onlyIfCached()Lcom/avos/avoscloud/okhttp/CacheControl$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lcom/avos/avoscloud/okhttp/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->build()Lcom/avos/avoscloud/okhttp/CacheControl;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/CacheControl;->FORCE_CACHE:Lcom/avos/avoscloud/okhttp/CacheControl;

    return-void
.end method

.method private constructor <init>(Lcom/avos/avoscloud/okhttp/CacheControl$Builder;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget-boolean v0, p1, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->noCache:Z

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->noCache:Z

    .line 67
    iget-boolean v0, p1, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->noStore:Z

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->noStore:Z

    .line 68
    iget v0, p1, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    iput v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->maxAgeSeconds:I

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->sMaxAgeSeconds:I

    .line 70
    iput-boolean v1, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->isPrivate:Z

    .line 71
    iput-boolean v1, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->isPublic:Z

    .line 72
    iput-boolean v1, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->mustRevalidate:Z

    .line 73
    iget v0, p1, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    iput v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->maxStaleSeconds:I

    .line 74
    iget v0, p1, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->minFreshSeconds:I

    iput v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->minFreshSeconds:I

    .line 75
    iget-boolean v0, p1, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->onlyIfCached:Z

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->onlyIfCached:Z

    .line 76
    iget-boolean v0, p1, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->noTransform:Z

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->noTransform:Z

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/CacheControl$Builder;Lcom/avos/avoscloud/okhttp/CacheControl$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/CacheControl;-><init>(Lcom/avos/avoscloud/okhttp/CacheControl$Builder;)V

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->noCache:Z

    .line 52
    iput-boolean p2, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->noStore:Z

    .line 53
    iput p3, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->maxAgeSeconds:I

    .line 54
    iput p4, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->sMaxAgeSeconds:I

    .line 55
    iput-boolean p5, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->isPrivate:Z

    .line 56
    iput-boolean p6, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->isPublic:Z

    .line 57
    iput-boolean p7, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->mustRevalidate:Z

    .line 58
    iput p8, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->maxStaleSeconds:I

    .line 59
    iput p9, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->minFreshSeconds:I

    .line 60
    iput-boolean p10, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->onlyIfCached:Z

    .line 61
    iput-boolean p11, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->noTransform:Z

    .line 62
    iput-object p12, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private headerValue()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    iget-boolean v1, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->noCache:Z

    if-eqz v1, :cond_0

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_0
    iget-boolean v1, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->noStore:Z

    if-eqz v1, :cond_1

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_1
    iget v1, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->maxAgeSeconds:I

    if-eq v1, v3, :cond_2

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->maxAgeSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_2
    iget v1, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->sMaxAgeSeconds:I

    if-eq v1, v3, :cond_3

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->sMaxAgeSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_3
    iget-boolean v1, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->isPrivate:Z

    if-eqz v1, :cond_4

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_4
    iget-boolean v1, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->isPublic:Z

    if-eqz v1, :cond_5

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_5
    iget-boolean v1, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->mustRevalidate:Z

    if-eqz v1, :cond_6

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_6
    iget v1, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->maxStaleSeconds:I

    if-eq v1, v3, :cond_7

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->maxStaleSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_7
    iget v1, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->minFreshSeconds:I

    if-eq v1, v3, :cond_8

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->minFreshSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_8
    iget-boolean v1, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->onlyIfCached:Z

    if-eqz v1, :cond_9

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_9
    iget-boolean v1, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->noTransform:Z

    if-eqz v1, :cond_a

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_b

    const-string v0, ""

    .line 269
    :goto_0
    return-object v0

    .line 268
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static parse(Lcom/avos/avoscloud/okhttp/Headers;)Lcom/avos/avoscloud/okhttp/CacheControl;
    .locals 23
    .parameter

    .prologue
    .line 153
    const/16 v16, 0x0

    .line 154
    const/4 v4, 0x0

    .line 155
    const/4 v5, -0x1

    .line 156
    const/4 v6, -0x1

    .line 157
    const/4 v7, 0x0

    .line 158
    const/4 v8, 0x0

    .line 159
    const/4 v9, 0x0

    .line 160
    const/4 v10, -0x1

    .line 161
    const/4 v11, -0x1

    .line 162
    const/4 v12, 0x0

    .line 163
    const/4 v13, 0x0

    .line 165
    const/4 v15, 0x1

    .line 166
    const/4 v3, 0x0

    .line 168
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v19

    move/from16 v18, v2

    move-object v2, v3

    move/from16 v3, v16

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    .line 169
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v16

    .line 170
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v14

    .line 172
    const-string v17, "Cache-Control"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 173
    if-eqz v2, :cond_2

    .line 175
    const/4 v15, 0x0

    .line 186
    :goto_1
    const/16 v16, 0x0

    move/from16 v22, v16

    move/from16 v16, v3

    move/from16 v3, v22

    .line 187
    :cond_0
    :goto_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_11

    .line 189
    const-string v17, "=,;"

    move-object/from16 v0, v17

    invoke-static {v14, v3, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    .line 190
    move/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 193
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v17

    if-eq v0, v3, :cond_1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v21, 0x2c

    move/from16 v0, v21

    if-eq v3, v0, :cond_1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v21, 0x3b

    move/from16 v0, v21

    if-ne v3, v0, :cond_4

    .line 194
    :cond_1
    add-int/lit8 v17, v17, 0x1

    .line 195
    const/4 v3, 0x0

    move-object/from16 v22, v3

    move/from16 v3, v17

    move-object/from16 v17, v22

    .line 216
    :goto_3
    const-string v21, "no-cache"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 217
    const/16 v16, 0x1

    goto :goto_2

    :cond_2
    move-object v2, v14

    .line 177
    goto :goto_1

    .line 179
    :cond_3
    const-string v17, "Pragma"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 181
    const/4 v15, 0x0

    goto :goto_1

    .line 197
    :cond_4
    add-int/lit8 v3, v17, 0x1

    .line 198
    invoke-static {v14, v3}, Lcom/avos/avoscloud/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v3

    .line 201
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_5

    invoke-virtual {v14, v3}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v21, 0x22

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 202
    add-int/lit8 v3, v3, 0x1

    .line 204
    const-string v17, "\""

    move-object/from16 v0, v17

    invoke-static {v14, v3, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    .line 205
    move/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 206
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v22, v3

    move/from16 v3, v17

    move-object/from16 v17, v22

    .line 209
    goto :goto_3

    .line 211
    :cond_5
    const-string v17, ",;"

    move-object/from16 v0, v17

    invoke-static {v14, v3, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    .line 212
    move/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    move/from16 v3, v17

    move-object/from16 v17, v22

    goto :goto_3

    .line 218
    :cond_6
    const-string v21, "no-store"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 219
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 220
    :cond_7
    const-string v21, "max-age"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 221
    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/avos/avoscloud/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_2

    .line 222
    :cond_8
    const-string v21, "s-maxage"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 223
    const/4 v6, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/avos/avoscloud/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_2

    .line 224
    :cond_9
    const-string v21, "private"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 225
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 226
    :cond_a
    const-string v21, "public"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 227
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 228
    :cond_b
    const-string v21, "must-revalidate"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 229
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 230
    :cond_c
    const-string v21, "max-stale"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 231
    const v10, 0x7fffffff

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lcom/avos/avoscloud/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v10

    goto/16 :goto_2

    .line 232
    :cond_d
    const-string v21, "min-fresh"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 233
    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/avos/avoscloud/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_2

    .line 234
    :cond_e
    const-string v17, "only-if-cached"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 235
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 236
    :cond_f
    const-string v17, "no-transform"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 237
    const/4 v13, 0x1

    goto/16 :goto_2

    :cond_10
    move/from16 v16, v3

    .line 168
    :cond_11
    add-int/lit8 v3, v18, 0x1

    move/from16 v18, v3

    move/from16 v3, v16

    goto/16 :goto_0

    .line 242
    :cond_12
    if-nez v15, :cond_13

    .line 243
    const/4 v14, 0x0

    .line 245
    :goto_4
    new-instance v2, Lcom/avos/avoscloud/okhttp/CacheControl;

    invoke-direct/range {v2 .. v14}, Lcom/avos/avoscloud/okhttp/CacheControl;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    return-object v2

    :cond_13
    move-object v14, v2

    goto :goto_4
.end method


# virtual methods
.method public isPrivate()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->isPrivate:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->isPublic:Z

    return v0
.end method

.method public maxAgeSeconds()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public maxStaleSeconds()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public minFreshSeconds()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public mustRevalidate()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public noCache()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->noCache:Z

    return v0
.end method

.method public noStore()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->noStore:Z

    return v0
.end method

.method public noTransform()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->noTransform:Z

    return v0
.end method

.method public onlyIfCached()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public sMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->sMaxAgeSeconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    .line 251
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/CacheControl;->headerValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    goto :goto_0
.end method
