.class public Lcom/smartisanos/quicksearchbox/pinyinsearch/util/T9Util;
.super Ljava/lang/Object;
.source "T9Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 16
    .param p1, "pinyinUnitIndex"    # I
    .param p2, "t9PinyinUnitIndex"    # I
    .param p3, "baseData"    # Ljava/lang/String;
    .param p4, "searchBuffer"    # Ljava/lang/StringBuffer;
    .param p5, "matchKeyword"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/StringBuffer;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "pinyinUnits":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;>;"
    .try_start_0
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 176
    :cond_0
    const/4 v1, 0x0

    .line 298
    :goto_0
    return v1

    .line 179
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 180
    .local v13, "search":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 181
    const/4 v1, 0x1

    goto :goto_0

    .line 184
    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, p1

    if-lt v0, v1, :cond_3

    .line 185
    const/4 v1, 0x0

    goto :goto_0

    .line 187
    :cond_3
    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;

    .line 189
    .local v12, "pyUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, p2

    if-lt v0, v1, :cond_4

    .line 190
    const/4 v1, 0x0

    goto :goto_0

    .line 193
    :cond_4
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v1

    move/from16 v0, p2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    .line 197
    .local v11, "pinyinBaseUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->isPinyin()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 199
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 200
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 201
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/T9Util;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 203
    .local v7, "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_5

    .line 204
    const/4 v1, 0x1

    goto :goto_0

    .line 206
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 212
    .end local v7    # "found":Z
    :cond_6
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 214
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 215
    const/4 v1, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 216
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 218
    :cond_7
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 220
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 222
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/T9Util;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 223
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_8

    .line 224
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 226
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 298
    :cond_9
    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 230
    .end local v7    # "found":Z
    :cond_a
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/T9Util;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 231
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v7, v1, :cond_9

    .line 232
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 238
    .end local v7    # "found":Z
    :cond_b
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 240
    const/4 v14, 0x0

    .line 241
    .local v14, "startIndex":I
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v1

    add-int/2addr v1, v14

    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v2

    add-int/2addr v2, v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    const/4 v1, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 243
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 244
    .end local v14    # "startIndex":I
    :cond_c
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 246
    const/4 v14, 0x0

    .line 247
    .restart local v14    # "startIndex":I
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v1

    add-int/2addr v1, v14

    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v2

    add-int/2addr v2, v14

    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/T9Util;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 250
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_d

    .line 251
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 253
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 256
    .end local v7    # "found":Z
    .end local v14    # "startIndex":I
    :cond_e
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gtz v1, :cond_13

    .line 257
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 258
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 259
    .local v9, "index":I
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v2

    add-int/2addr v2, v9

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    const/4 v1, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 261
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 266
    .end local v9    # "index":I
    :cond_f
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    .line 267
    .local v10, "numLength":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v10, :cond_12

    .line 268
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 269
    .local v15, "subStr":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 270
    const/4 v1, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/T9Util;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 273
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_10

    .line 274
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 276
    :cond_10
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 267
    .end local v7    # "found":Z
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 285
    .end local v15    # "subStr":Ljava/lang/String;
    :cond_12
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/T9Util;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 286
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_9

    .line 287
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 292
    .end local v7    # "found":Z
    .end local v8    # "i":I
    .end local v10    # "numLength":I
    :cond_13
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/T9Util;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 293
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_9

    .line 294
    const/4 v1, 0x1

    goto/16 :goto_0

.try_end_0

    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0
    return v1

.end method

.method public static getT9Number(C)C
    .locals 1
    .param p0, "alphabet"    # C

    .prologue
    .line 37
    move v0, p0

    .line 39
    .local v0, "ch":C
    packed-switch p0, :pswitch_data_0

    .line 120
    :goto_0
    :pswitch_0
    return v0

    .line 46
    :pswitch_1
    const/16 v0, 0x32

    .line 47
    goto :goto_0

    .line 55
    :pswitch_2
    const/16 v0, 0x33

    .line 56
    goto :goto_0

    .line 64
    :pswitch_3
    const/16 v0, 0x34

    .line 65
    goto :goto_0

    .line 73
    :pswitch_4
    const/16 v0, 0x35

    .line 74
    goto :goto_0

    .line 82
    :pswitch_5
    const/16 v0, 0x36

    .line 83
    goto :goto_0

    .line 93
    :pswitch_6
    const/16 v0, 0x37

    .line 94
    goto :goto_0

    .line 102
    :pswitch_7
    const/16 v0, 0x38

    .line 103
    goto :goto_0

    .line 113
    :pswitch_8
    const/16 v0, 0x39

    .line 114
    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public static match(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;Ljava/lang/String;)Z
    .locals 10
    .param p0, "pinyinSearchUnit"    # Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 132
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v9

    .line 161
    :goto_0
    return v0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getBaseData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getMatchKeyword()Ljava/lang/StringBuffer;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v9

    .line 137
    goto :goto_0

    .line 140
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getMatchKeyword()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getMatchKeyword()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v0, v9, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 142
    const/4 v7, 0x0

    .line 143
    .local v7, "pinyinUnitsLength":I
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getPinyinUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 144
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    .local v4, "searchBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_5

    .line 149
    const/4 v2, 0x0

    .line 150
    .local v2, "j":I
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getMatchKeyword()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getMatchKeyword()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v0, v9, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {v4, v9, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getPinyinUnits()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getBaseData()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getMatchKeyword()Ljava/lang/StringBuffer;

    move-result-object v5

    .line 153
    invoke-static/range {v0 .. v5}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/T9Util;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v6

    .line 155
    .local v6, "found":Z
    if-ne v8, v6, :cond_4

    move v0, v8

    .line 156
    goto :goto_0

    .line 145
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "j":I
    .end local v6    # "found":Z
    :cond_5
    move v0, v9

    .line 161
    goto :goto_0
.end method
