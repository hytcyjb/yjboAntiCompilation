.class public Lcom/alibaba/fastjson/serializer/FilterUtils;
.super Ljava/lang/Object;
.source "FilterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_2

    .line 218
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 219
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 220
    invoke-interface {v0, p1, p2, v2}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 228
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 225
    goto :goto_0

    :cond_2
    move v0, v1

    .line 228
    goto :goto_0
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;C)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 270
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_2

    .line 275
    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 277
    invoke-interface {v0, p1, p2, v2}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 285
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 282
    goto :goto_0

    :cond_2
    move v0, v1

    .line 285
    goto :goto_0
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;D)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 327
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_2

    .line 332
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 333
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 334
    invoke-interface {v0, p1, p2, v2}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    const/4 v0, 0x0

    .line 342
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 339
    goto :goto_0

    :cond_2
    move v0, v1

    .line 342
    goto :goto_0
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;F)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 308
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_2

    .line 313
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 314
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 315
    invoke-interface {v0, p1, p2, v2}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    .line 323
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 320
    goto :goto_0

    :cond_2
    move v0, v1

    .line 323
    goto :goto_0
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;I)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 251
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_2

    .line 256
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 258
    invoke-interface {v0, p1, p2, v2}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 266
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 263
    goto :goto_0

    :cond_2
    move v0, v1

    .line 266
    goto :goto_0
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;J)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 289
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_2

    .line 294
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 296
    invoke-interface {v0, p1, p2, v2}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 304
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 301
    goto :goto_0

    :cond_2
    move v0, v1

    .line 304
    goto :goto_0
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 197
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 199
    if-nez v0, :cond_0

    move v0, v1

    .line 209
    :goto_0
    return v0

    .line 203
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 204
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 209
    goto :goto_0
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;S)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 232
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_2

    .line 237
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    .line 238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 239
    invoke-interface {v0, p1, p2, v2}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 244
    goto :goto_0

    :cond_2
    move v0, v1

    .line 247
    goto :goto_0
.end method

.method public static applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 181
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyPreFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 183
    if-nez v0, :cond_0

    move v0, v1

    .line 193
    :goto_0
    return v0

    .line 187
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    .line 188
    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 193
    goto :goto_0
.end method

.method public static getExtratype(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getExtraTypeProvidersDirect()Ljava/util/List;

    move-result-object v1

    .line 13
    if-nez v1, :cond_1

    .line 21
    :cond_0
    return-object v0

    .line 18
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    .line 19
    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;->getExtraType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public static processExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getExtraProcessorsDirect()Ljava/util/List;

    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 32
    :cond_0
    return-void

    .line 29
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    .line 30
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;->processExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 82
    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 86
    :cond_0
    return-object p2
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 173
    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 177
    :cond_0
    return-object p2
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;D)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 147
    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 151
    :cond_0
    return-object p2
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;F)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 134
    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 138
    :cond_0
    return-object p2
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 108
    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 112
    :cond_0
    return-object p2
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 121
    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 125
    :cond_0
    return-object p2
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 69
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 73
    :cond_0
    return-object p2
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;S)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 95
    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 99
    :cond_0
    return-object p2
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 160
    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 164
    :cond_0
    return-object p2
.end method

.method public static processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getValueFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/ValueFilter;

    .line 58
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 62
    :cond_0
    return-object p3
.end method

.method public static writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getAfterFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 48
    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p2

    goto :goto_0

    .line 51
    :cond_0
    return p2
.end method

.method public static writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getBeforeFiltersDirect()Ljava/util/List;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 38
    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p2

    goto :goto_0

    .line 41
    :cond_0
    return p2
.end method
